# 4x1 Multiplexer

## Description

This project implements a 4-to-1 multiplexer using behavioral modeling in Verilog.  
A 4x1 MUX selects one of four input signals based on a 2-bit select line and forwards it to the output.

## Files Included

- `mux_4x1.v` – Verilog module for 4x1 MUX (behavioral)
- `mux_4x1_tb.v` – Testbench for simulation
- `mux_4x1_schematic.png` – Schematic Diagram

## I/O Ports

| Signal | Direction | Width | Description              |
|--------|-----------|-------|--------------------------|
| i0     | Input     | 1-bit | Input line 0             |
| i1     | Input     | 1-bit | Input line 1             |
| i2     | Input     | 1-bit | Input line 2             |
| i3     | Input     | 1-bit | Input line 3             |
| sel    | Input     | 2-bit | Select lines             |
| y      | Output    | 1-bit | Output based on `sel`    |

## Functionality

The output `y` depends on the value of `sel`:

- `00` → `y = i0`  
- `01` → `y = i1`  
- `10` → `y = i2`  
- `11` → `y = i3`  

The selection is implemented using a `case` statement inside an `always @(*)` block.

## How to Simulate

1. Open your Verilog simulator (Vivado, ModelSim, Icarus, etc.).
2. Add the files `mux_4x1.v` and `mux_4x1_tb.v` to your project.
3. Set `mux_4x1_tb.v` as the top module.
4. Run behavioral simulation.
5. Observe and verify the output waveform for each select combination.

---
