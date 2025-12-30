# Full Adder Using Half Adders

This project demonstrates the Verilog implementation of a **1-bit Full Adder** using two **Half Adders** and an OR gate. It is a fundamental building block in digital arithmetic circuits.

## Logic Structure

A Full Adder adds three 1-bit inputs: `A`, `B`, and `Cin`, and produces a `Sum` and a `Cout` (Carry-out).  
It is constructed using two Half Adders:

1. **First Half Adder**
   - Inputs: A, B
   - Outputs: Sum1, Carry1

2. **Second Half Adder**
   - Inputs: Sum1, Cin
   - Outputs: Final Sum, Carry2

3. **Final Carry**
   - Cout = Carry1 OR Carry2

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

– Verilog module for Half Adder  
– Full Adder built using two Half Adders  
– Testbench with `$monitor` for all 8 input combinations  
– (Optional) Schematic diagram of full adder structure

## Tools Used

- Xilinx Vivado  
- Verilog HDL  
- Simulation with Behavioral Testbench

## How to Simulate

1. Create a project in Vivado.
2. Add `half_adder.v`, `full_adder.v`, and `full_adder_tb.v`.
3. Set `full_adder_tb` as the top module.
4. Run Behavioral Simulation and view the console output/waveform.

---
