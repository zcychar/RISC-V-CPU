from assassyn.frontend import *

LSQ_SIZE = 32

class LSQWritePort(Module):
    def __init__(self):
        super().__init__(ports={})

class LSQ(Module):
    def __init__(self):
        super().__init__(
            ports={
                "has_entry_from_rs": Port(Bits(1)),
                "rs1_val_from_rs": Port(Bits(32)),
                "rs2_val_from_rs": Port(Bits(32)),
                "imm_val_from_rs": Port(Bits(32)),
                "memory_from_rs": Port(Bits(2)),
                "pos_from_rs": Port(Bits(32)),
                "rob_dest_from_rs": Port(Bits(32)),
            }
        )
        self.name = "LSQ"

    @module.combinational
    def build(
        self,
        dcache: SRAM,
        depth_log: int,
        out_valid_to_rob,
        rob_dest_to_rob,
    ):
        (
            has_entry_from_rs,
            rs1_val_from_rs,
            rs2_val_from_rs,
            imm_val_from_rs,
            memory_from_rs,
            pos_from_rs,
            rob_dest_from_rs,
        ) = self.pop_all_ports(False)

        head = RegArray(Bits(32), 1)
        commit_pos = RegArray(Bits(32), 1)
        # LSQ table
        busy_array = RegArray(Bits(1), LSQ_SIZE)
        memory_array = RegArray(Bits(2), LSQ_SIZE)
        addr_array = RegArray(Bits(32), LSQ_SIZE)
        data_array = RegArray(Bits(32), LSQ_SIZE)
        rob_dest_array = RegArray(Bits(32), LSQ_SIZE)

        # Append entry
        with Condition(has_entry_from_rs):
            index = pos_from_rs & Bits(32)(LSQ_SIZE - 1)
            busy_array[index] = Bits(1)(1)
            memory_array[index] = memory_from_rs
            addr = rs1_val_from_rs.bitcast(Int(32)) + imm_val_from_rs.bitcast(Int(32))
            addr_array[index] = addr.bitcast(Bits(32))
            rob_dest_array[index] = rob_dest_from_rs
            log(
                "LSQ Append Entry: index={}, memory={}, addr=0x{:08x}, data=0x{:08x}, rob_dest=0x{:08x}",
                index.bitcast(UInt(32)),
                memory_from_rs.bitcast(UInt(2)),
                addr.bitcast(UInt(32)),
                rs2_val_from_rs.bitcast(UInt(32)),
                rob_dest_from_rs.bitcast(UInt(32)),
            )

            with Condition(memory_from_rs[1:1] == Bits(1)(1)):  # Store
                data_array[index] = rs2_val_from_rs

        # Execute head entry
        execute_port = LSQWritePort()
        head_index = head[0]
        requested_addr = busy_array[head_index].select(
            addr_array[head_index][2 : 2 + depth_log - 1].bitcast(UInt(depth_log)),
            UInt(depth_log)(0),
        )
        with Condition(busy_array[head_index]):
            (busy_array & execute_port)[head_index] = Bits(1)(0)
            rob_dest_to_rob[0] = rob_dest_array[head_index]
            head[0] = (head_index.bitcast(Int(32)) + Int(32)(1)).bitcast(Bits(32))
            with Condition(memory_array[head_index][0:0] == Bits(1)(1)):  # Load
                out_valid_to_rob[0] = Bits(1)(1)
                log(
                    "LSQ Load: index={}, addr=0x{:08x}",
                    head_index.bitcast(UInt(32)),
                    addr_array[head_index],
                )
                
            with Condition(memory_array[head_index][1:1] == Bits(1)(1)):  # Store
                out_valid_to_rob[0] = Bits(1)(0)
                log(
                    "LSQ Store: index={}, addr=0x{:08x}, data=0x{:08x}",
                    head_index.bitcast(UInt(32)),
                    addr_array[head_index],
                    data_array[head_index],
                )
        we = busy_array[head_index].select(
            memory_array[head_index][1:1], Bits(1)(0)
        )
        re = busy_array[head_index].select(
            memory_array[head_index][0:0], Bits(1)(0)
        )
        # Currently only support sw
        dcache.build(
            we=we,
            re=re,
            addr=requested_addr,
            wdata=data_array[head_index],
        )
        with Condition(~busy_array[head_index]):
            out_valid_to_rob[0] = Bits(1)(0)

        
        
