# NOR Gate (Verilog)

This project implements a basic **NOR gate** using Verilog. A NOR gate outputs `1` only when both inputs are `0`.

### Logic Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

### Files
- `nor_gate.v` – NOR gate logic
- `nor_gate_tb.v` – Testbench

### How to Run
1. Create a Vivado project
2. Add source and testbench files
3. Run simulation to verify output
4. Optional: Run synthesis to view schematic
