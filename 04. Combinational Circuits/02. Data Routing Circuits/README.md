# Data Routing Circuits

This folder contains RTL implementations of essential **data routing combinational circuits** written in Verilog HDL.

These circuits manage the flow of data within a digital system using control signals, and are fundamental to designing datapaths, buses, and control logic in SoCs and FPGAs.

## Circuits Implemented

- Multiplexers
- Demultiplexers
- Decoders
- Encoders
- Tristate Buffer
- Bus Switch

## Files Included

Each design includes:

- Verilog source file (`.v`)
- Testbench file (`_tb.v`)
- RTL schematic
- README file

## Tools Used

- Verilog HDL  
- Xilinx Vivado (for simulation and synthesis)

## How to Run

1. Open Vivado and create a new RTL project.
2. Add the Verilog source and testbench files.
3. Set the testbench as the top module.
4. Run **Behavioral Simulation** to verify outputs.

---
