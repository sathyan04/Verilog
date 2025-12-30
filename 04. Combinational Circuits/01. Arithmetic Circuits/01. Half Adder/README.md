# Half Adder

This project contains the Verilog implementation of a Half Adder. A Half Adder is a basic combinational logic circuit used to perform the addition of two single-bit binary numbers.

## Logic Description

- Inputs: A, B (1-bit each)
- Outputs:
  - Sum = A XOR B
  - Carry = A AND B

## Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

## Files Included

- `half_adder.v` – Verilog module for Half Adder
- `tb_half_adder.v` – Verilog testbench
- `schematic.png` – Optional schematic from Vivado synthesis

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a project in Vivado.
2. Add the `half_adder.v` and `tb_half_adder.v` files.
3. Run behavioral simulation to verify functionality.
