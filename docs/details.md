# Details
This document provides detailed information about why the architecture is designed the way it is, along with explanations of specific modules and components used in the implementation.

## FetcherImpl Downstream
### Why FetcherImpl uses Downstream?
Downstream, in short, is designed to write combinational logic between modules in pipeline. The FetcherImpl module uses Downstream to connect the fetch stage with the decode stage, allowing some information to be passed directly without going through registers. Think about
branch instructions. When confronted with a branch instruction, common practice works like this:

- Cycle 1: Fetch the branch instruction
- Cycle 2: Decode the branch instruction. Now decoder
knows it is a branch instruction, but fetcher does not know it yet. So fetcher still fetches the next sequential instruction and sends it to decoder.
- Cycle 3: fetcher receives the branch target, stoping fetching sequential instructions and waiting for the new PC. But decoder has already received the next sequential instruction in cycle 2, and this instruction is possibly wrong. We should specifically handle this case in decoder and there is a bubble.

But with Downstream, fetcher can directly receive the information that "it is a branch instruction" from decoder in the same cycle (cycle 2). So fetcher can stop immediately.

## Write Ports
Assassyn has strictly limited the number of write ports of a module writing to the same RegArray to 1. However, in some cases, we need multiple write ports. For example, in ROB, we may need one write port for committing instructions; another write port for receiving results from ALU, and etc. To solve this problem, we can create a new module for a new write port,
like:
```python
class ROBWritePort(Module):
    def __init__(self):
        super().__init__(ports={})
```
This module does not execute any logic, but just provides an additional write port to ROB. In this way, we can have multiple write ports to the same RegArray.
Like this:
```python
write_port_alu = ROBWritePort()
```
Use it by '&' operator:
```python
with Condition(alu_valid_from_alu[0]):
    alu_idx = rob_index_from_alu[0]
    (ready_array & write_port_alu)[alu_idx] = Bits(1)(1)
    (value_array & write_port_alu)[alu_idx] = alu_value_from_alu[0]
    log(
        "ROB: Received from ALU idx={}, value=0x{:08x}",
        alu_idx,
        alu_value_from_alu[0],
    )
```

## Store Instructions
### Why only sw is supported now?
Because 'SRAM' module in assassyn only supports word-aligned access. To support byte/halfword access, we need to first read the whole word from memory, then modify the corresponding byte/halfword, and finally write back the whole word to memory. This requires additional logic to handle the read-modify-write cycle, which is not implemented yet.

## LSQ
### How Load-Store Queue handles flush?
When a branch misprediction is detected, the ROB will flush the pipeline, including the LSQ. The LQ and SQ will be flushed differently:
- **Load Queue (LQ)**: All entries in the LQ are simply cleared,
    as loads do not affect the memory state no matter they are executed or not.
- **Store Queue (SQ)**: Only the entries that have not been committed yet are cleared. Already committed entries should not be cleared and should be executed to ensure memory consistency.
#### How to identify committed stores in SQ?
We maintain a `committed` and `lsq_pos` field for each SQ entry. When a load/store instruction is issued to the LSQ, it is assigned a position in the LSQ (`lsq_pos`) and position in corresponding queue(`lq_pos` and `sq_pos`). `lsq_pos` in this case is started from `1` for the first issued store instruction, `2` for the second, and so on, while `lq_pos` and `sq_pos` are started from `0`, corresponding to the `LQ` or `SQ` index. When the ROB commits a store instruction, it sends a commit signal to the LSQ along with the corresponding `sq_pos`. The LSQ then marks the store entry with the matching `sq_pos` as `committed = True`. 
#### How to flush uncommitted stores and preserve committed stores?
When a flush is triggered, the LSQ iterates through the SQ entries and checks the `committed` flag. If a busy entry is marked as `committed = False`, it is cleared from the SQ. If it is marked as `committed = True`, we preserve it by marking its `lsq_pos = 0`, indicating that it is no longer in the active LSQ but still needs to be executed. During the execution phase, the LSQ checks the `lsq_pos` of the head entry. If `lsq_pos > 0`, it means the store is still active and should be executed. If `lsq_pos = 0`, it means the store has been committed and should be executed regardless of the flush.