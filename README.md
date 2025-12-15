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

## Tests
Unit tests are in the unit_tests/ directory. To run tests, execute main.py, use the --test argument to select test cases, and --max-cycles to limit the number of cycles(default 50 cycles).
For example:
```
python main.py --test raw --max-cycles 100
```
You could see log in the .workaspace/ directory.

## TODO
- Handle the issue of index length mismatch
- Implement Branch Prediction
- Implement more tests
