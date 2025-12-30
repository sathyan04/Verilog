# 1x4 Demultiplexer

This project implements a 1:4 demultiplexer using Verilog HDL. A demultiplexer (DEMUX) is a combinational circuit that takes a single input and routes it to one of multiple outputs, depending on the value of the select input.

## Logic Description

The 1:4 demultiplexer takes one 1-bit input `in` and a 2-bit select signal `sel`, and produces four outputs: `y0`, `y1`, `y2`, and `y3`.

- If `sel = 00`, then output `y0 = in`, others = 0  
- If `sel = 01`, then output `y1 = in`, others = 0  
- If `sel = 10`, then output `y2 = in`, others = 0  
- If `sel = 11`, then output `y3 = in`, others = 0  

## Truth Table

| sel  | in | y0 | y1 | y2 | y3 |
|------|----|----|----|----|----|
| 00   | 0  | 0  | 0  | 0  | 0  |
| 00   | 1  | 1  | 0  | 0  | 0  |
| 01   | 0  | 0  | 0  | 0  | 0  |
| 01   | 1  | 0  | 1  | 0  | 0  |
| 10   | 0  | 0  | 0  | 0  | 0  |
| 10   | 1  | 0  | 0  | 1  | 0  |
| 11   | 0  | 0  | 0  | 0  | 0  |
| 11   | 1  | 0  | 0  | 0  | 1  |

## Files Included

- `demux_1x4.v` – Verilog module for the 1:4 demultiplexer (behavioral)
- `demux_1x4_tb.v` – Testbench for simulation
- `demux_1x4_schematic.png` – Optional RTL schematic generated from Vivado

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a project in Vivado.
2. Add the source file `demux_1x4.v` and testbench file `demux_1x4_tb.v`.
3. Set `demux_1x4_tb.v` as the top module for simulation.
4. Run Behavioral Simulation to verify the output.
5. Optional: Open synthesized design to view schematic.
---
