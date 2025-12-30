# 4x2 Encoder

This project implements a 4-to-2 encoder using Verilog HDL. An encoder is a combinational circuit that converts one of several active inputs into a binary code representing its position.

## Logic Description

A 4x2 encoder takes **4 input lines** (`I0` to `I3`) and produces a **2-bit binary output** (`Y1`, `Y0`) indicating the active input line. It is assumed that **only one input is high at any time** (one-hot input condition).

### Output Mapping

| Input Lines | Output (Y1 Y0) |
|-------------|----------------|
| 0001 (I0)   | 00             |
| 0010 (I1)   | 01             |
| 0100 (I2)   | 10             |
| 1000 (I3)   | 11             |

## Files Included

- `encoder_4x2.v` – Verilog module for the 4x2 encoder
- `encoder_4x2_tb.v` – Testbench for simulation
- `encoder_4x2_schematic.png` – RTL schematic (optional)

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a project in Vivado.
2. Add the source file `encoder_4x2.v` and testbench `encoder_4x2_tb.v`.
3. Set the testbench as the top module.
4. Run Behavioral Simulation.
5. (Optional) Synthesize and view the RTL schematic.

---
