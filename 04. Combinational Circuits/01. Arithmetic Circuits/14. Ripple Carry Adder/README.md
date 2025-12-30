# Ripple Carry Adder (4-bit)

This project implements a 4-bit Ripple Carry Adder (RCA) using structural modeling in Verilog. The adder is built by cascading four full adders, with each carry-out rippling to the next stage's carry-in.

## Logic Description

- **Inputs**:
  - `a` [3:0] – First 4-bit input
  - `b` [3:0] – Second 4-bit input
  - `cin` – Carry-in input

- **Outputs**:
  - `sum` [3:0] – 4-bit sum output
  - `cout` – Carry-out

## Files Included

- `full_adder.v` – 1-bit Full Adder module
- `rc_adder.v` – 4-bit Ripple Carry Adder using full adders
- `rc_adder_tb.v` – Testbench for simulation
- `adder_schematic.png` – Synthesized schematic (optional)

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Open Vivado and create a new project.
2. Add the files `full_adder.v`, `rc_adder.v`, and `rc_adder_tb.v`.
3. Set `rc_adder_tb` as the top module.
4. Run behavioral simulation to verify functionality.

---
