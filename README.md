# RISC-V-CPU
Final project of CS2967
A RISC-V CPU simulator implemented in Python using [assassyn](https://github.com/Synthesys-Lab/assassyn.git). To use this project, you should
configure assassyn environment first.
## Current work
Currently working on tomasulo algorithm

### Current module list:
- Fetch: Fetches instructions from instruction memory
- Decode: Decodes instructions and reads registers
- RS: Reservation Stations for holding instructions before execution
- ROB: Reorder Buffer for in-order commit
- ALU: Arithmetic Logic Unit for executing instructions
- LSQ: Load Store Queue for memory operations

Only supports alu instructions, lw/sw and branches without load/store yet.
## Tests
Unit tests are in the unit_tests/ directory. To run tests, execute main.py
For example:
```
python main.py --test raw
```
You could see log in the .workaspace/ directory.

## TODO
- Fix the store logic in LSQ
    - Store instructions should be executed after ROB commit, but currently they are executed when they reach the head of LSQ
- Consider separating load queue and store queue (maybe more efficient in flushing? Not sure)
- Add support for more load/store instructions
    - lb, lh, lbu, lhu (Seems not hard)
    - sb, sh (Medium)
