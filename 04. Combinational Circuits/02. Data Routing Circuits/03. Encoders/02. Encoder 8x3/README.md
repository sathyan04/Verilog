# 8x3 Encoder

This project implements an 8-to-3 encoder using Verilog HDL. An encoder is a combinational circuit that generates a binary code corresponding to the position of the active input.

## Logic Description

The 8x3 encoder accepts **8 inputs** (`I0` to `I7`) and generates a **3-bit output** (`Y2`, `Y1`, `Y0`). It assumes that only one of the inputs is high at a time.

### Output Mapping

| Input Lines | Output (Y2 Y1 Y0) |
|-------------|-------------------|
| 0000 0001   | 000               |
| 0000 0010   | 001               |
| 0000 0100   | 010               |
| 0000 1000   | 011               |
| 0001 0000   | 100               |
| 0010 0000   | 101               |
| 0100 0000   | 110               |
| 1000 0000   | 111               |

## Files Included

- `encoder_8x3.v` – Verilog module for the 8x3 encoder
- `encoder_8x3_tb.v` – Testbench for simulation
- `encoder_8x3_schematic.png` – RTL schematic (optional)

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a new project in Vivado.
2. Add both `encoder_8x3.v` and `encoder_8x3_tb.v` to the sources.
3. Set the testbench as the top module.
4. Run Behavioral Simulation.
5. (Optional) View the synthesized design to inspect the logic.

---
