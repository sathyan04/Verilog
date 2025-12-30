# 1x8 Demultiplexer

This project implements a **1:8 demultiplexer** using Verilog HDL. A demultiplexer is a combinational logic circuit that routes a single input to one of several outputs, based on the binary value of the select lines.

## Logic Description

The **1:8 demultiplexer** takes:
- **1-bit input** `in`
- **3-bit select line** `sel`
- **8 output lines**: `y0` to `y7`

Depending on the value of `sel`, the input `in` is directed to the corresponding output line, while all others remain low (`0`).

## Functional Behavior:

- If `sel = 000`, then `y0 = in`
- If `sel = 001`, then `y1 = in`
- ...
- If `sel = 111`, then `y7 = in`

All other outputs remain `0`.

## Truth Table (Partial)

| sel   | in | y0 | y1 | y2 | y3 | y4 | y5 | y6 | y7 |
|--------|----|----|----|----|----|----|----|----|----|
| 000    |  0 |  0 |  0 |  0 |  0 |  0 |  0 |  0 |  0 |
| 000    |  1 |  1 |  0 |  0 |  0 |  0 |  0 |  0 |  0 |
| 001    |  1 |  0 |  1 |  0 |  0 |  0 |  0 |  0 |  0 |
| 010    |  1 |  0 |  0 |  1 |  0 |  0 |  0 |  0 |  0 |
| 111    |  1 |  0 |  0 |  0 |  0 |  0 |  0 |  0 |  1 |

## Files Included

- `demux_1x8.v` – Verilog module implementing the 1x8 DEMUX
- `demux_1x8_tb.v` – Testbench for verifying functional correctness
- `demux_1x8_schematic.png` – RTL schematic snapshot from Vivado

## Tools Used

- **Xilinx Vivado**
- **Verilog HDL**

## How to Simulate

1. Open **Vivado** and create a new project.
2. Add both `demux_1x8.v` and `demux_1x8_tb.v` to the project.
3. Set `demux_1x8_tb.v` as the **top module** for simulation.
4. Run **Behavioral Simulation** and observe the waveform/output.
5. *(Optional)* Open **synthesized design** to visualize logic using schematic view.
---
