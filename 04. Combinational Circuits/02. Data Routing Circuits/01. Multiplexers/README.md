# Multiplexers

This folder contains RTL implementations of various multiplexer designs using Verilog HDL.

Multiplexers (MUX) are essential combinational circuits used to select one of many input signals and forward the selected input into a single line, controlled by select lines. These modules are fundamental in datapath design, control logic, and hierarchical system designs.

## Circuits Implemented

- 2x1 Multiplexer
- 4x1 Multiplexer  
- 4x1 Multiplexer - using 2x1 Multiplexers  
- 8x1 Multiplexer
- 8x1 Multiplexer - using 4x1 and 2x1 Multiplexers
- 8x1 Multiplexer - using 2x1 Multiplexers
  
## Files Included

Each multiplexer module includes:

- Verilog source file (`.v`)
- Testbench file (`_tb.v`)
- RTL schematic (optional)
- README file (optional per design)

## Tools Used

- Verilog HDL  
- Xilinx Vivado (for simulation and waveform generation)

## How to Run

1. Open Vivado and create a new RTL project.
2. Add the corresponding Verilog source and testbench files.
3. Set the testbench module as the **Top Module**.
4. Run **Behavioral Simulation** to view and verify waveform outputs.

---
