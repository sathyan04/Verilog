# verilog_not_gate

This project implements a basic NOT gate (inverter) using Verilog HDL. It includes a testbench to verify the logic using simulation in Xilinx Vivado.

## Files Included

- `not_gate.v` – Verilog module that defines the NOT gate logic
- `not_gate_tb.v` – Testbench that applies input and checks the output

## Logic Description

A NOT gate inverts the input logic level:
- If input is 0, output is 1
- If input is 1, output is 0

### Truth Table

| a | y = ~a |
|---|--------|
| 0 |   1    |
| 1 |   0    |

## How to Simulate (Vivado)

1. Open Vivado and create a new RTL project
2. Add `not_gate.v` as a design source
3. Add `not_gate_tb.v` as a simulation source
4. Set `not_gate_tb` as the top module
5. Run Behavioral Simulation
6. Check the output in the simulation console or waveform

## Notes

This project is a basic demonstration of logic gate design in Verilog. It's useful for learning gate-level modeling and practicing simulation using a testbench.
