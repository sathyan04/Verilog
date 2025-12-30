# 8x1 Multiplexer using 4x1 and 2x1 MUX

This project demonstrates the hierarchical design of an 8-to-1 multiplexer using two 4x1 multiplexers and one 2x1 multiplexer. The implementation is written in Verilog HDL and follows modular design principles for clarity and reusability.

## Logic Description

An 8x1 multiplexer takes 8 input signals and routes one of them to the output based on a 3-bit select input. In this design:

- The two least significant bits of the select line are used to control the two 4x1 multiplexers.
- The most significant bit of the select line is used to select between the outputs of the two 4x1 MUXes using a 2x1 multiplexer.

## File Structure

- `mux_2x1.v` – Verilog code for 2x1 multiplexer
- `mux_4x1.v` – Verilog code for 4x1 multiplexer
- `mux_8x1.v` – Top module for 8x1 MUX using 4x1 and 2x1
- `mux_8x1_tb.v` – Testbench to verify all input and select combinations

## Testbench Details

The testbench verifies the correct output for all 8 combinations of the 3-bit select input. The simulation checks if the output matches the expected input line selected by the current select combination.

## Tools Used

- Verilog HDL
- Xilinx Vivado / ModelSim / Icarus Verilog

## How to Run

1. Open your Verilog simulation tool.
2. Create a new project and add all Verilog files.
3. Set `mux_8x1_tb.v` as the top module.
4. Compile and run the simulation.
5. Observe the waveform or console output to verify correct operation.

---
