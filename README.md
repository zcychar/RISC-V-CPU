# RISC-V-CPU
Final project of CS2967
A RISC-V CPU simulator implemented in Python using [assassyn](https://github.com/Synthesys-Lab/assassyn.git). To use this project, you should
configure assassyn environment first.
## Current work
Currently working on tomasulo algorithm. Architecture is in docs/arch.md, details in docs/details.md.

## Tests
Unit tests are in the unit_tests/ directory. To run tests, execute main.py, use the --test argument to select test cases, and --max-cycles to limit the number of cycles(default 50 cycles).
For example:
```
python main.py --test raw --max-cycles 100
```
You can also use --workload to run workload files in workloads/ directory. For example:
```
python main.py --workload 0to100 --max-cycles 10000
```
If you already have a unified init image (one word per line hex, like the generated `workload/<name>/<name>.txt`), you can run it directly without .ans checking using `--init-file` (feeds both icache and dcache) and optionally run Verilator unless `--skip-verilator` is set:
```
python main.py --init-file workload/0to100/0to100.txt --max-cycles 100000
```
You can choose the branch predictor via `--predictor` ( Currently supports: `tournament`, `global`, `two_bit`, `always_false`,
  `always_true`):
```
python main.py --test br1 --predictor global
```
You could see log in the .workaspace/ directory.
You can simply run all workload tests by(100000000 cycles default):
```python 
python main.py
```
or 
```python
python main.py --all-workloads --max-cycles 100000000
```

## Prediction Statistics
The CPU now supports collecting branch prediction statistics. After running a workload or test case with `--stat` option, a summary of branch prediction statistics will be logged in .workspace/simulation.log and saved in the specified CSV file (default: .workspace/stats.csv). The statistics include the total number of committed instructions, total branches, correctly predicted branches, prediction accuracy.

## TODO
- Extend instruction set
