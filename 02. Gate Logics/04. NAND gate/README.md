# NAND Gate (Verilog)

This project implements a basic **NAND gate** using Verilog. A NAND gate outputs `0` only when both inputs are `1`.

### Logic Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### Files
- `nand_gate.v` – NAND gate logic
- `nand_gate_tb.v` – Testbench

### How to Run
1. Create a Vivado project
2. Add source and testbench files
3. Run simulation to verify output
4. Optional: Run synthesis to view schematic
