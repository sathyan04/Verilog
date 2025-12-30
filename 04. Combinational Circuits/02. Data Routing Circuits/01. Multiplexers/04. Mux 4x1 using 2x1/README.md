# 4x1 Multiplexer Using 2x1 Multiplexers

This project implements a 4:1 multiplexer using three 2:1 multiplexers in Verilog HDL. The design follows a modular and hierarchical approach, where smaller MUX units are reused to construct larger logic.

## Logic Description

A 4:1 multiplexer selects one of four 1-bit inputs (`i[3:0]`) based on two select lines (`sel[1:0]`):

- If `sel = 00`, output `y = i[0]`
- If `sel = 01`, output `y = i[1]`
- If `sel = 10`, output `y = i[2]`
- If `sel = 11`, output `y = i[3]`

## Files Included

- `mux_2x1.v` – Verilog module for 2:1 multiplexer
- `mux_4x1.v` – Verilog module for 4:1 multiplexer built from 2:1 MUXes
- `mux_tb.v`  – Testbench for verifying 4:1 MUX behavior

## Testbench Summary

The testbench sets input `i = 4'b0111` and iterates through all combinations of the select lines:

| sel | i[3:0] | y |
|-----|--------|---|
| 00  | 0111   | 1 |
| 01  | 0111   | 1 |
| 10  | 0111   | 1 |
| 11  | 0111   | 0 |

## Tools Used

- Verilog HDL
- Xilinx Vivado (or any other Verilog simulator)

## How to Run

1. Create a project in Vivado (or any HDL simulator).
2. Add the following files:
   - `mux_2x1.v`
   - `mux_4x1.v`
   - `mux_tb.v`
3. Set `mux_tb.v` as the top module.
4. Run Behavioral Simulation.
5. Observe console output or waveform to verify correctness.

---
