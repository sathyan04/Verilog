# 1x4 Demultiplexer using 1x2 Demultiplexers

This project implements a **1:4 demultiplexer** using Verilog HDL by hierarchically instantiating **three 1:2 demultiplexers**. A demultiplexer (DEMUX) is a combinational circuit that takes a single input and routes it to one of several outputs based on the select inputs.

## Logic Description

The 1:4 demultiplexer takes:
- One 1-bit data input `in`
- A 2-bit select signal `sel[1:0]`
- Four outputs: `y0`, `y1`, `y2`, `y3`

### Hierarchical Breakdown:
- First level: `sel[0]` routes `in` to one of two internal wires (`w1`, `w2`) using the first 1x2 demux.
- Second level: Two more 1x2 demuxes use `sel[1]` to route `w1` to `y0/y1` and `w2` to `y2/y3`.

## Files Included

- `demux_1x2.v` – Verilog module for basic 1x2 demux
- `demux_1x4.v` – Hierarchical 1x4 demux using three 1x2 demuxes
- `demux_tb.v` – Testbench for simulating 1x4 demux
- `demux_1x4_schematic.png` – Optional schematic of hierarchical structure

## Tools Used

- Xilinx Vivado  
- Verilog HDL

## How to Run

1. Create a project in Vivado.
2. Add `demux_1x2.v`, `demux_1x4.v`, and `demux_tb.v` as source files.
3. Set `demux_tb.v` as the top module for simulation.
4. Run Behavioral Simulation to verify the functionality.
5. Optional: Open the synthesized design to view the schematic of the hierarchy.

---
