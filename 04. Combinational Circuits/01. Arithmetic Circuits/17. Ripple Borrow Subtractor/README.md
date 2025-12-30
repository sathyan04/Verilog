# 4-bit Ripple Borrow Subtractor

This project implements a 4-bit Ripple Borrow Subtractor using structural Verilog. The design chains four full subtractors to perform bitwise subtraction of two 4-bit binary numbers with borrow propagation.

## Logic Description

- **Inputs**:
  - `a` [3:0] – 4-bit
  - `b` [3:0] – 4-bit
  - `bin`     – 1-bit

- **Outputs**:
  - `diff` [3:0] – 4-bit
  - `bor`        – Final 1-bit borrow-out

## Internal Architecture

The circuit is built by cascading four full subtractors. Each stage subtracts corresponding bits from `a` and `b`, considering borrow from the previous stage.

## Files Included

- `full_subtractor.v` – 1-bit full subtractor module
- `ripple_borrow.v` – 4-bit subtractor built using full subtractors
- `subtractor_testbench.v` – Verilog testbench
- `subtractor_schematic.png` – Optional Vivado schematic image

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a new project in Vivado.
2. Add the files: `full_subtractor.v`, `ripple_borrow.v`, and `subtractor_testbench.v`.
3. Set `subtractor_testbench` as the top module.
4. Run behavioral simulation to verify the functionality.
---
