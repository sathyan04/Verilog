# 8x1 Multiplexer

This project implements an 8:1 multiplexer using Verilog HDL. A multiplexer (MUX) is a combinational circuit that selects one of several input signals and forwards the selected input to the output based on select lines.

## Logic Description

The 8:1 multiplexer selects one of the eight 1-bit inputs (`in0` to `in7`) based on the 3-bit select input `sel`.

- If `sel = 000`, then `y = in0`
- If `sel = 001`, then `y = in1`
- ...
- If `sel = 111`, then `y = in7`

## Truth Table

| sel (3-bit) | y   |
|-------------|-----|
| 000         | in0 |
| 001         | in1 |
| 010         | in2 |
| 011         | in3 |
| 100         | in4 |
| 101         | in5 |
| 110         | in6 |
| 111         | in7 |

## Files Included

- `mux_8x1.v` – Verilog module for the 8:1 multiplexer  
- `mux_8x1_tb.v` – Testbench for simulation  
- `mux8x1_schematic.png` – Optional RTL schematic (from Vivado)

## Tools Used

- Xilinx Vivado  
- Verilog HDL

## How to Run

1. Create a new project in Vivado.
2. Add the source file `mux_8x1.v` and testbench `mux_8x1_tb.v`.
3. Set `mux_8x1_tb.v` as the top module for simulation.
4. Run Behavioral Simulation to verify the output.
5. (Optional) Open synthesized design to view RTL schematic.
