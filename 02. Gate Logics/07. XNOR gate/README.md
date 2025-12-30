# XNOR Gate (Verilog)

This project implements a basic **XNOR gate** using Verilog. An XNOR gate outputs `1` only when the inputs are the same.

### Logic Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### Files
- `xnor_gate.v` – XNOR gate logic
- `xnor_gate_tb.v` – Testbench

### How to Run
1. Create a Vivado project
2. Add source and testbench files
3. Run simulation to verify output
4. Optional: Run synthesis to view schematic
