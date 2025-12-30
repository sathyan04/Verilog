# 1x8 Demultiplexer Using Only 1x2 Demultiplexers

This project implements a hierarchical **1:8 demultiplexer** (DEMUX) using only **1x2 demultiplexers** in Verilog HDL. The circuit takes a single input and routes it to one of the eight outputs based on a 3-bit select signal.

## Logic Description

A 1x8 demultiplexer directs a 1-bit input to one of eight outputs based on a 3-bit `sel` signal. This design is built hierarchically using **seven 1x2 DEMUX modules**.

### Select Line Usage
- `sel[2]`: Used in the **first-stage** 1x2 demux.
- `sel[1:0]`: Used in **subsequent levels** of 1x2 demuxes that split the signal further.

## Files Included

- `demux_1x2.v` – Base module for 1x2 DEMUX (behavioral model)
- `demux_1x8_only1x2.v` – Hierarchical implementation of 1x8 DEMUX using only 1x2
- `demux_1x8_tb.v` – Testbench for the 1x8 DEMUX
- `demux_1x8_schematic.png` – (Optional) Synthesized schematic from Vivado

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Simulate

1. Open Vivado and create a new project.
2. Add `demux_1x2.v`, `demux_1x8_only1x2.v`, and `demux_1x8_tb.v` to the design.
3. Set `demux_1x8_tb.v` as the top module for simulation.
4. Run **Behavioral Simulation**.
5. Observe waveform or output console (`$monitor`) to verify functionality.
---
