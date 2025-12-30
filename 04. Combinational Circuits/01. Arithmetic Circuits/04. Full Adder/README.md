# Full Adder

This project contains the Verilog implementation of a Full Adder using direct combinational logic. A Full Adder performs binary addition of three 1-bit inputs: `A`, `B`, and `Cin` (carry-in), and produces a `Sum` and `Cout` (carry-out).

## Logic Description

- Inputs: A, B, Cin (1-bit each)
- Outputs:
  - Sum = A XOR B XOR Cin
  - Carry = (A AND B) OR (B AND Cin) OR (A AND Cin)

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

## Files Included

– Verilog module for Full Adder
– Verilog testbench
– Optional simulation result (GTKWave/Vivado)

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a new project in Vivado.
2. Add the `full_adder.v` and `tb_full_adder.v` files.
3. Run behavioral simulation to verify the output.
