# 1x8 Demultiplexer (Hierarchical Design)

This project implements a **1:8 demultiplexer** using a hierarchical Verilog design. It combines one 1:2 demultiplexer and two 1:4 demultiplexers to build the 1:8 structure.

## Logic Description

A 1:8 demultiplexer routes a single input `in` to one of 8 output lines based on a 3-bit select signal `sel[2:0]`.

## Hierarchical Structure:
- The most significant select bit `sel[0]` feeds a 1x2 demux.
- The outputs of this 1x2 demux are connected to two 1x4 demux modules.
- The lower two bits `sel[2:1]` control both 1x4 demuxes to route `in` to one of the 8 outputs.

## Files Included

- `demux_1x2.v` – 1:2 demultiplexer module
- `demux_1x4.v` – 1:4 demultiplexer module
- `demux_1x8.v` – 1:8 demultiplexer module using one 1x2 and two 1x4 modules
- `demux_1x8_tb.v` – Testbench to validate all select input combinations
- `demux_1x8_schematic.png` – (Optional) Synthesized RTL schematic from Vivado

## Tools Used

- Verilog HDL
- Xilinx Vivado (Simulation + RTL Schematic)

## How to Run

1. Open Vivado and create a new project.
2. Add all source files:
   - `demux_1x2.v`
   - `demux_1x4.v`
   - `demux_1x8.v`
   - `demux_1x8_tb.v`
3. Set `demux_1x8_tb.v` as the top module for simulation.
4. Run Behavioral Simulation.
5. (Optional) Open Synthesized Design to view the RTL schematic.
---
