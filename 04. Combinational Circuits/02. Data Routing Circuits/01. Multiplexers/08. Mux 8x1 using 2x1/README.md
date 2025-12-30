# 8x1 Multiplexer using 2x1 MUX

This project demonstrates a structural RTL design of an 8x1 multiplexer built using seven 2x1 multiplexers in Verilog. Designed and simulated using **Xilinx Vivado**.

## Overview

An 8x1 multiplexer selects one of 8 input lines based on a 3-bit select signal. Instead of coding the logic directly, this implementation builds the 8x1 MUX hierarchically using 2x1 MUX modules. This approach reinforces principles of modularity and design hierarchy.

## File Structure

- `mux_2x1.v` – Basic 2x1 multiplexer module  
- `mux_8x1.v` – Hierarchical 8x1 MUX using seven 2x1 MUX instances  
- `mux_tb.v` – Testbench to verify functionality of the 8x1 MUX  

## Design Description

### Layered MUX Construction

- **Level 1 (4 MUXes):**  
  Takes inputs `in[0:7]`, selects between pairs based on `sel[0]`.
  
- **Level 2 (2 MUXes):**  
  Selects between outputs of Level 1 MUXes using `sel[1]`.

- **Level 3 (1 MUX):**  
  Final output selection using `sel[2]`.

### Select Line Usage

- `sel[0]` – Controls the **first layer** (bit-level switching)  
- `sel[1]` – Controls the **second layer**  
- `sel[2]` – Controls the **final MUX output**

This mirrors a tree-like MUX structure common in digital logic design.

## Simulation Instructions (Vivado)

1. **Create a Vivado project** and add:
   - `mux_2x1.v`
   - `mux_8x1.v`
   - `mux_tb.v`

2. **Set `mux_tb.v` as the top module** for simulation.

3. **Run Behavioral Simulation**  
   Open the **Waveform Viewer** to observe the output `y` against different values of `in` and `sel`.

4. To ensure correct waveform:
   - Make sure you use a **`$monitor`** for console output.
   - To view signal transitions, use **`Run All`** or simulate with a defined time (e.g. 100ns).

---
