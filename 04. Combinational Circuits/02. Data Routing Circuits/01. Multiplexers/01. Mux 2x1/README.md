# 2x1 Multiplexer

This project implements a 2:1 multiplexer using Verilog HDL. A multiplexer (MUX) is a combinational circuit that selects one of two input signals and forwards it to the output based on a select line.

## Logic Description

The 2:1 multiplexer selects between two 1-bit inputs, `a` and `b`, based on the value of the select input `sel`.

- If `sel = 0`, then output `y = a`
- If `sel = 1`, then output `y = b`

## Truth Table

| sel | a | b | y |
|-----|---|---|---|
|  0  | 0 | 0 | 0 |
|  0  | 0 | 1 | 0 |
|  0  | 1 | 0 | 1 |
|  0  | 1 | 1 | 1 |
|  1  | 0 | 0 | 0 |
|  1  | 0 | 1 | 1 |
|  1  | 1 | 0 | 0 |
|  1  | 1 | 1 | 1 |

## Files Included

- `mux_2x1.v` – Verilog module for the 2:1 multiplexer
- `mux_2x1_tb.v` – Testbench for simulation
- `mux_2x1_schematic.png` – Optional RTL schematic generated from Vivado

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a project in Vivado.
2. Add the source file `mux_2x1.v` and testbench file `mux_2x1_tb.v`.
3. Set `mux_2x1_tb.v` as the top module for simulation.
4. Run Behavioral Simulation to verify the output.
5. Optional: Open synthesized design to view schematic.
