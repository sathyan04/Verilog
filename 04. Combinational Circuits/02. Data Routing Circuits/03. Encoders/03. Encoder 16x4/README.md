# 16x4 Encoder

This project implements a 16-to-4 encoder using Verilog HDL. A 16x4 encoder is a combinational circuit that encodes 16 input lines into a 4-bit binary output, indicating the index of the active high input line.

## Logic Description

The 16x4 encoder takes **16 input lines** (`I0` to `I15`) and produces a **4-bit output** (`Y3`, `Y2`, `Y1`, `Y0`). It assumes a **one-hot input condition** — only one input will be active at any given time.

### Output Mapping

| Input (One-Hot) | Output (Y3 Y2 Y1 Y0) |
|------------------|----------------------|
| 0000_0000_0000_0001 (I0)  | 0000 |
| 0000_0000_0000_0010 (I1)  | 0001 |
| 0000_0000_0000_0100 (I2)  | 0010 |
| 0000_0000_0000_1000 (I3)  | 0011 |
| 0000_0000_0001_0000 (I4)  | 0100 |
| 0000_0000_0010_0000 (I5)  | 0101 |
| 0000_0000_0100_0000 (I6)  | 0110 |
| 0000_0000_1000_0000 (I7)  | 0111 |
| 0000_0001_0000_0000 (I8)  | 1000 |
| 0000_0010_0000_0000 (I9)  | 1001 |
| 0000_0100_0000_0000 (I10) | 1010 |
| 0000_1000_0000_0000 (I11) | 1011 |
| 0001_0000_0000_0000 (I12) | 1100 |
| 0010_0000_0000_0000 (I13) | 1101 |
| 0100_0000_0000_0000 (I14) | 1110 |
| 1000_0000_0000_0000 (I15) | 1111 |

## Files Included

- `encoder_16x4.v` – Verilog module for the 16x4 encoder
- `encoder_16x4_tb.v` – Testbench to verify encoder functionality
- `encoder_16x4_schematic.png` – Optional RTL schematic image

## Tools Used

- Xilinx Vivado
- Verilog HDL

## How to Run

1. Create a new project in Vivado or your preferred HDL tool.
2. Add the files `encoder_16x4.v` and `encoder_16x4_tb.v` to your project.
3. Set the testbench as the top module.
4. Run Behavioral Simulation to verify logic correctness.
5. (Optional) Synthesize and inspect the RTL schematic.

---
