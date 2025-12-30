# Simple ALU

This project implements a 1-bit Arithmetic and Logic Unit (ALU) in Verilog.  
The ALU performs basic arithmetic and logical operations based on a 4-bit select input.

## Logic Description

The ALU supports the following operations:

| sel | Operation | Description     |
|-----|-----------|-----------------|
|  0  | AND       | result = a & b  |
|  1  | OR        | result = a | b  |
|  2  | XOR       | result = a ^ b  |
|  3  | NOT A     | result = ~a     |
|  4  | NOT B     | result = ~b     |
|  5  | ADD       | result = a + b  |
|  6  | SUB       | result = a - b  |
|  7  | PASS A    | result = a      |
|  8  | PASS B    | result = b      |

The operation is selected using the 4-bit input `sel`.

## Inputs and Outputs

| Signal   | Width | Direction | Description           |
|----------|-------|-----------|-----------------------|
| `a`      | 1-bit | Input     | Operand A             |
| `b`      | 1-bit | Input     | Operand B             |
| `sel`    | 4-bit | Input     | Operation selector    |
| `result` | 1-bit | Output    | Result of operation   |

## Files Included

- `simple_alu.v` – ALU design module  
- `simple_alu_tb.v` – Testbench module  

## Tools Used

- Verilog HDL  
- Xilinx Vivado / ModelSim / EDA Playground  
- GTKWave (optional for waveform visualization)

## How to Simulate

1. Create a new Verilog project in your simulator (Vivado or any other tool).
2. Add the following files:
   - `simple_alu.v`
   - `simple_alu_tb.v`
3. Set `simple_alu_tb.v` as the top module.
4. Run behavioral simulation.
5. Observe the output `result` for different values of `sel`.

---
