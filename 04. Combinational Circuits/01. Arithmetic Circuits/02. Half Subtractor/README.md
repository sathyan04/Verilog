# Half Subtractor

This project contains the Verilog implementation of a Half Subtractor. A Half Subtractor is a combinational logic circuit that performs subtraction of two single-bit binary numbers.

## Logic Description

- Inputs: A, B (1-bit each)
- Outputs:
  - Difference = A XOR B
  - Borrow = NOT A AND B

## Truth Table

| A | B | Difference | Borrow |
|---|---|------------|--------|
| 0 | 0 |     0      |   0    |
| 0 | 1 |     1      |   1    |
| 1 | 0 |     1      |   0    |
| 1 | 1 |     0      |   0    |

## Files Included

- `half_subtractor.v` – Verilog module for Half Subtractor
- `tb_half_subtractor.v` – Verilog testbench
- `schematic.png` – Optional schematic from Vivado synthesis

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Open Vivado and create a new project.
2. Add the Verilog module and testbench files.
3. Run behavioral simulation and verify the output.
