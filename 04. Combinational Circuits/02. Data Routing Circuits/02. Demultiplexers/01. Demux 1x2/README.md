# 1x2 Demultiplexer

This project implements a 1:2 demultiplexer using Verilog HDL. A demultiplexer (DEMUX) is a combinational circuit that takes a single input and routes it to one of multiple outputs, depending on the value of the select input.

## Logic Description

The 1:2 demultiplexer takes one 1-bit input `in` and a 1-bit select signal `sel`, and produces two outputs: `y0` and `y1`.

- If `sel = 0`, then output `y0 = in`, `y1 = 0`
- If `sel = 1`, then output `y1 = in`, `y0 = 0`

## Truth Table

| sel | in | y0 | y1 |
|-----|----|----|----|
|  0  |  0 |  0 |  0 |
|  0  |  1 |  1 |  0 |
|  1  |  0 |  0 |  0 |
|  1  |  1 |  0 |  1 |

## Files Included

- `demux_1x2.v` – Verilog module for the 1:2 demultiplexer (behavioral)
- `demux_1x2_tb.v` – Testbench for simulation
- `demux_1x2_schematic.png` – Optional RTL schematic generated from Vivado

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a project in Vivado.
2. Add the source file `demux_1x2.v` and testbench file `demux_1x2_tb.v`.
3. Set `demux_1x2_tb.v` as the top module for simulation.
4. Run Behavioral Simulation to verify the output.
5. Optional: Open synthesized design to view schematic.
---
