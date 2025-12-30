# AND Gate in Verilog

This project implements a simple 2-input AND gate using Verilog Hardware Description Language. It also includes a basic testbench to verify the gate's functionality through simulation in Xilinx Vivado.

## Files

- and_gate.v – Verilog module for the AND gate
- and_gate_tb.v – Testbench for simulating and testing the AND gate

## Logic

An AND gate produces a high output (1) only when both inputs are high.

### Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## How to Run in Vivado

1. Open Xilinx Vivado.
2. Create a new RTL project.
3. Add `and_gate.v` as a design source.
4. Add `and_gate_tb.v` as a simulation source.
5. Set the testbench as the top module for simulation.
6. Run behavioral simulation and observe the output waveform.

## Tools Used

- Xilinx Vivado (Standard Edition / WebPACK)
- Verilog HDL

## Notes

This is a beginner-level Verilog project created for understanding basic logic gate implementation and simulation.
