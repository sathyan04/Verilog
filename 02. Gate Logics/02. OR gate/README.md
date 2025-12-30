# verilog_or_gate

This is a basic 2-input OR gate implemented in Verilog HDL. It includes a simple testbench to verify the logic using simulation in Xilinx Vivado.

## Files

- `or_gate.v` — Verilog code for the OR gate
- `or_gate_tb.v` — Testbench to simulate the OR gate behavior

## Logic Description

An OR gate gives an output of 1 when at least one of the inputs is 1.

### Truth Table

| a | b | y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## How to Run (in Vivado)

1. Open Vivado and create a new RTL project
2. Add `or_gate.v` as a design source
3. Add `or_gate_tb.v` as a simulation source
4. Set the testbench module (`or_gate_tb`) as the top for simulation
5. Run Behavioral Simulation
6. Observe the waveform or output in the simulation console

## Notes

This project is a simple step in learning digital logic design and working with Verilog. It’s meant for practice and understanding the basic gate-level modeling using simulation tools like Vivado.
