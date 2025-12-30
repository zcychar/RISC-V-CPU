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
Assassyn has strictly limited the number of write ports of a module writing to the same RegArray to 1. However, in some cases, we need multiple write ports. For example, in ROB, we may need one write port for committing instructions; another write port for receiving results from ALU, and etc. To solve this problem, we use an array of RegArray, each with one write port. For example, if we want multiple write ports to a RegArray of size n, instead of writing
```python
reg_array = RegArray(Bits(32), n)
```
we write
```python
reg_arrays = [RegArray(Bits(32), 1) for _ in range(n)]
```
Then, we use `read_mux` and `write1hot` utility functions in utils.py to read and write these arrays as if they are a single RegArray. These utility functions are virtually multiplexer and demultiplexer.
## Store Instructions

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
#### How to handle sb/sh in assassyn?
In assassyn, `SRAM` module only supports word-aligned access. To handle `sb` and `sh` instructions, we read the entire word containing the target byte/half-word, modify the relevant portion, and write back the entire word. This ensures that only the intended byte/half-word is changed while preserving the rest of the word. So sb/sh instructions are treated as a lw and sw instruction pair internally in LSQ, thus require two cycles to execute.

