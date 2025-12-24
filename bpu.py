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


class TournamentBPU(Downstream):
    def __init__(self, local_bits=10, global_size=64, chooser_bits=10):
        super().__init__()
        if global_size <= 0 or (global_size & (global_size - 1)) != 0:
            raise ValueError("global_size must be a power of two")
        self.local_bits = local_bits
        self.chooser_bits = chooser_bits
        self.global_size = global_size
        self.global_bits = global_size.bit_length() - 1
        self.global_mask = (1 << self.global_bits) - 1
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
        Tournament predictor: local vs. global,
        chooser table decides which prediction to use.
        """
        local_pht = RegArray(Bits(2), 1 << self.local_bits)
        global_pht = RegArray(Bits(2), self.global_size)
        chooser = RegArray(Bits(2), 1 << self.chooser_bits)
        global_history = RegArray(Bits(self.global_bits), 1)

        pc_plus_4 = (pc_addr_from_d.bitcast(Int(32)) +
                     Int(32)(4)).bitcast(Bits(32))

        local_idx = pc_addr_from_d[2: 2 + self.local_bits - 1]
        local_ctr = local_pht[local_idx]
        local_taken = local_ctr[1:1]
        local_pc_pred = local_taken.select(target_pc_from_d, pc_plus_4)

        ghr = global_history[0]
        global_ctr = global_pht[ghr]
        global_taken = global_ctr[1:1]
        global_pc_pred = global_taken.select(target_pc_from_d, pc_plus_4)

        chooser_idx = pc_addr_from_d[2: 2 + self.chooser_bits - 1]
        chooser_ctr = chooser[chooser_idx]
        use_global = chooser_ctr[1:1]

        predict_taken_flag = is_branch_from_d.select(
            use_global.select(global_taken, local_taken), Bits(1)(0)
        )
        predicted_pc_addr = is_branch_from_d.select(
            use_global.select(global_pc_pred, local_pc_pred),
            pc_plus_4,
        )

        with Condition(is_branch_from_d):
            self.log(
                "BPU PC=0x{:08x} chooser={} use_global={} local_ctr={} global_ctr={} predict_taken={}",
                pc_addr_from_d,
                chooser_ctr.bitcast(UInt(2)),
                use_global.bitcast(UInt(1)),
                local_ctr.bitcast(UInt(2)),
                global_ctr.bitcast(UInt(2)),
                predict_taken_flag.bitcast(UInt(1)),
            )

        predicted_pc[0] = predicted_pc_addr
        predict_taken[0] = predict_taken_flag

        with Condition(commit_branch_from_rob[0]):
            actual_taken_flag = actual_taken_from_rob[0]

            local_idx_c = pc_addr_from_rob[0][2: 2 + self.local_bits - 1]
            chooser_idx_c = pc_addr_from_rob[0][2: 2 + self.chooser_bits - 1]

            local_ctr_old = local_pht[local_idx_c]
            plus_local = (local_ctr_old != Bits(2)(3)) & actual_taken_flag
            minus_local = (local_ctr_old != Bits(2)(0)) & (~actual_taken_flag)
            local_ctr_new = plus_local.select(
                (local_ctr_old.bitcast(Int(2)) + Int(2)(1)).bitcast(Bits(2)),
                local_ctr_old,
            )
            local_ctr_new = minus_local.select(
                (local_ctr_old.bitcast(Int(2)) - Int(2)(1)).bitcast(Bits(2)),
                local_ctr_new,
            )
            local_pht[local_idx_c] = local_ctr_new

            ghr_old = global_history[0]
            global_ctr_old = global_pht[ghr_old]
            plus_global = (global_ctr_old != Bits(2)(3)) & actual_taken_flag
            minus_global = (global_ctr_old != Bits(2)
                            (0)) & (~actual_taken_flag)
            global_ctr_new = plus_global.select(
                (global_ctr_old.bitcast(Int(2)) + Int(2)(1)).bitcast(Bits(2)),
                global_ctr_old,
            )
            global_ctr_new = minus_global.select(
                (global_ctr_old.bitcast(Int(2)) - Int(2)(1)).bitcast(Bits(2)),
                global_ctr_new,
            )
            global_pht[ghr_old] = global_ctr_new

            local_correct = (local_ctr_old[1:1] == actual_taken_flag)
            global_correct = (global_ctr_old[1:1] == actual_taken_flag)
            chooser_ctr_old = chooser[chooser_idx_c]
            inc_chooser = global_correct & (~local_correct) & (
                chooser_ctr_old != Bits(2)(3))
            dec_chooser = local_correct & (~global_correct) & (
                chooser_ctr_old != Bits(2)(0))
            chooser_ctr_new = inc_chooser.select(
                (chooser_ctr_old.bitcast(Int(2)) + Int(2)(1)).bitcast(Bits(2)),
                chooser_ctr_old,
            )
            chooser_ctr_new = dec_chooser.select(
                (chooser_ctr_old.bitcast(Int(2)) - Int(2)(1)).bitcast(Bits(2)),
                chooser_ctr_new,
            )
            chooser[chooser_idx_c] = chooser_ctr_new

            ghr_u = ghr_old.bitcast(UInt(self.global_bits))
            shifted = (ghr_u << UInt(self.global_bits)(1)) | actual_taken_flag.bitcast(
                UInt(self.global_bits)
            )
            masked = shifted & Bits(self.global_bits)(self.global_mask).bitcast(
                UInt(self.global_bits)
            )
            ghr_new = masked.bitcast(Bits(self.global_bits))
            global_history[0] = ghr_new

            self.log(
                "BPU Update PC=0x{:08x} local_ctr {}->{} global_ctr {}->{} chooser {}->{} ghr {}->{} outcome={}",
                pc_addr_from_rob[0],
                local_ctr_old.bitcast(UInt(2)),
                local_ctr_new.bitcast(UInt(2)),
                global_ctr_old.bitcast(UInt(2)),
                global_ctr_new.bitcast(UInt(2)),
                chooser_ctr_old.bitcast(UInt(2)),
                chooser_ctr_new.bitcast(UInt(2)),
                ghr_old.bitcast(UInt(self.global_bits)),
                ghr_new,
                actual_taken_flag.bitcast(UInt(1)),
            )

        return predict_taken_flag, predicted_pc_addr
