from assassyn.frontend import *
from utils import Logger, BPULogEnabled


class AlwaysFalseBPU(Downstream):
    def __init__(self):
        super().__init__()
        self.name = "BPU"
        self.log = Logger(enabled=BPULogEnabled)

    @downstream.combinational
    def build(
        self,
        pc_addr_from_d: Value,
        target_pc_from_d: Value,
        is_branch_from_d: Value,
        predicted_pc: Array,
        predict_taken: Array,
        commit_branch_from_rob: Array,
        actual_taken_from_rob: Array,
        pc_addr_from_rob: Array,
    ):
        """
        A BPU that always predicts not taken.
        """

        predict_taken[0] = Bits(1)(0)
        predicted_pc[0] = (
            pc_addr_from_d.bitcast(Int(32)) + Bits(32)(4).bitcast(Int(32))
        ).bitcast(Bits(32))

        with Condition(is_branch_from_d):
            self.log(
                "BPU PC=0x{:08x} PredictTaken=0",
                pc_addr_from_d,
            )

        return Bits(1)(0), pc_addr_from_d + Bits(32)(4)


class AlwaysTakenBPU(Downstream):
    def __init__(self):
        super().__init__()
        self.name = "BPU"
        self.log = Logger(enabled=BPULogEnabled)

    @downstream.combinational
    def build(
        self,
        pc_addr_from_d: Value,
        target_pc_from_d: Value,
        is_branch_from_d: Value,
        predicted_pc: Array,
        predict_taken: Array,
        commit_branch_from_rob: Array,
        actual_taken_from_rob: Array,
        pc_addr_from_rob: Array,
    ):
        """
        A BPU that always predicts taken.
        """

        predict_taken[0] = is_branch_from_d
        predicted_pc_addr = is_branch_from_d.select(
            target_pc_from_d,
            (pc_addr_from_d.bitcast(Int(32)) + Bits(32)(4).bitcast(Int(32))).bitcast(
                Bits(32)
            ),
        )
        predicted_pc[0] = predicted_pc_addr

        with Condition(is_branch_from_d):
            self.log(
                "BPU PC=0x{:08x} PredictTaken=1",
                pc_addr_from_d,
            )

        return is_branch_from_d, predicted_pc_addr


class TwoBitBPU(Downstream):
    def __init__(self):
        super().__init__()
        self.name = "BPU"
        self.log = Logger(enabled=BPULogEnabled)

    @downstream.combinational
    def build(
        self,
        pc_addr_from_d: Value,
        target_pc_from_d: Value,
        is_branch_from_d: Value,
        predicted_pc: Array,
        predict_taken: Array,
        commit_branch_from_rob: Array,
        actual_taken_from_rob: Array,
        pc_addr_from_rob: Array,
    ):
        """
        A simple 2-bit saturating counter BPU.
        """

        bpu_size = 1024  # Number of entries in the BPU
        index_bits = 10  # log2(bpu_size)
        bpu_counters = RegArray(Bits(2), bpu_size)

        pc_index = pc_addr_from_d[
            2: 2 + index_bits - 1
        ]  # Use bits [2:12] of PC as index

        counter = bpu_counters[pc_index]

        branch_predict_taken = counter[1:1]
        pc_plus_4 = (pc_addr_from_d.bitcast(Int(32)) +
                     Int(32)(4)).bitcast(Bits(32))
        branch_predicted_pc = branch_predict_taken.select(
            target_pc_from_d, pc_plus_4
        )

        predict_taken_flag = is_branch_from_d.select(
            branch_predict_taken, Bits(1)(0))
        predicted_pc_addr = is_branch_from_d.select(
            branch_predicted_pc,
            pc_plus_4,
        )

        with Condition(is_branch_from_d):
            self.log(
                "BPU PC=0x{:08x} Counter={} PredictTaken={}",
                pc_addr_from_d,
                counter.bitcast(UInt(2)),
                predict_taken_flag.bitcast(UInt(1)),
            )

        predicted_pc[0] = predicted_pc_addr
        predict_taken[0] = predict_taken_flag

        with Condition(commit_branch_from_rob[0]):
            rob_pc_index = pc_addr_from_rob[0][2: 2 + index_bits - 1]
            actual_taken_flag = actual_taken_from_rob[0]

            counter = bpu_counters[rob_pc_index]

            plus_one_flag = (counter != Bits(2)(3)) & actual_taken_flag
            minus_one_flag = (counter != Bits(2)(0)) & (~actual_taken_flag)

            new_counter = plus_one_flag.select(
                (counter.bitcast(Int(2)) + Int(2)(1)).bitcast(Bits(2)), counter
            )
            new_counter = minus_one_flag.select(
                (counter.bitcast(Int(2)) - Int(2)(1)).bitcast(Bits(2)), new_counter
            )

            bpu_counters[rob_pc_index] = new_counter

            self.log(
                "BPU Update PC=0x{:08x} OldCounter={} ActualTaken={} NewCounter={}",
                pc_addr_from_rob[0],
                counter.bitcast(UInt(2)),
                actual_taken_flag.bitcast(UInt(1)),
                new_counter.bitcast(UInt(2)),
            )

        return predict_taken_flag, predicted_pc_addr


class GlobalHistoryBPU(Downstream):
    def __init__(self, size=64):
        super().__init__()
        # Require power-of-two size; default is 64 entries (6-bit history).
        if size <= 0 or (size & (size - 1)) != 0:
            raise ValueError("GlobalHistoryBPU size must be a power of two")
        self.size = size
        self.index_bits = size.bit_length() - 1
        self.mask_bits = (1 << self.index_bits) - 1
        self.name = "BPU"
        self.log = Logger(enabled=BPULogEnabled)

    @downstream.combinational
    def build(
        self,
        pc_addr_from_d: Value,
        target_pc_from_d: Value,
        is_branch_from_d: Value,
        predicted_pc: Array,
        predict_taken: Array,
        commit_branch_from_rob: Array,
        actual_taken_from_rob: Array,
        pc_addr_from_rob: Array,
    ):
        """
        Global-history predictor with a pattern history table of 2-bit counters.
        History length = log2(table_size); default table_size=64.
        """

        pht = RegArray(Bits(2), self.size)
        global_history = RegArray(Bits(self.index_bits), 1)

        hist = global_history[0]
        idx = hist
        counter = pht[idx]

        branch_predict_taken = counter[1:1]
        pc_plus_4 = (pc_addr_from_d.bitcast(Int(32)) +
                     Int(32)(4)).bitcast(Bits(32))
        branch_predicted_pc = branch_predict_taken.select(
            target_pc_from_d, pc_plus_4)

        predict_taken_flag = is_branch_from_d.select(
            branch_predict_taken, Bits(1)(0))
        predicted_pc_addr = is_branch_from_d.select(
            branch_predicted_pc, pc_plus_4)

        with Condition(is_branch_from_d):
            self.log(
                "BPU PC=0x{:08x} GHR=0x{:x} Counter={} PredictTaken={}",
                pc_addr_from_d,
                hist.bitcast(UInt(self.index_bits)),
                counter.bitcast(UInt(2)),
                predict_taken_flag.bitcast(UInt(1)),
            )

        predicted_pc[0] = predicted_pc_addr
        predict_taken[0] = predict_taken_flag

        with Condition(commit_branch_from_rob[0]):
            old_hist = global_history[0]
            old_counter = pht[old_hist]
            actual_taken_flag = actual_taken_from_rob[0]

            plus_one_flag = (old_counter != Bits(2)(3)) & actual_taken_flag
            minus_one_flag = (old_counter != Bits(2)(0)) & (~actual_taken_flag)

            new_counter = plus_one_flag.select(
                (old_counter.bitcast(Int(2)) + Int(2)(1)).bitcast(Bits(2)),
                old_counter,
            )
            new_counter = minus_one_flag.select(
                (old_counter.bitcast(Int(2)) - Int(2)(1)).bitcast(Bits(2)),
                new_counter,
            )
            pht[old_hist] = new_counter

            hist_u = old_hist.bitcast(UInt(self.index_bits))
            shifted = ((hist_u << UInt(self.index_bits)(1)) | actual_taken_flag.bitcast(
                UInt(self.index_bits)
            ))
            new_hist = ((shifted & Bits(self.index_bits)(self.mask_bits).bitcast(
                UInt(self.index_bits)
            )).bitcast(Bits(self.index_bits)))
            global_history[0] = new_hist

            self.log(
                "BPU Update PC=0x{:08x} OldGHR=0x{:x} OldCounter={} ActualTaken={} NewCounter={} NewGHR=0x{:x}",
                pc_addr_from_rob[0],
                old_hist.bitcast(UInt(self.index_bits)),
                old_counter.bitcast(UInt(2)),
                actual_taken_flag.bitcast(UInt(1)),
                new_counter.bitcast(UInt(2)),
                new_hist.bitcast(UInt(self.index_bits)),
            )

        return predict_taken_flag, predicted_pc_addr
