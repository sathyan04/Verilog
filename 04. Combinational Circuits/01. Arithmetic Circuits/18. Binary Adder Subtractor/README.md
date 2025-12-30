# Binary Adder-Subtractor

This project demonstrates a 4-bit Binary Adder-Subtractor circuit using Verilog HDL.  
The design performs both binary addition and subtraction using a single control input (`cin`) to switch modes.

## Logic Description

Subtraction is implemented using 2’s complement logic:

A - B = A + (~B + 1)

The control input `cin` determines the operation mode:
- `cin = 0` → Perform Addition: sum = A + B
- `cin = 1` → Perform Subtraction: sum = A - B

Each bit of input `b` is XOR-ed with `cin` and passed to full adders.  
The initial carry-in is also set to `cin`.

## Inputs and Outputs

| Name   | Width | Direction | Description                       |
|--------|-------|-----------|-----------------------------------|
| `a`    | 4-bit | Input     | First binary operand              |
| `b`    | 4-bit | Input     | Second binary operand             |
| `cin`  | 1-bit | Input     | Operation mode: 0 = Add, 1 = Sub  |
| `sum`  | 4-bit | Output    | Result of addition or subtraction |
| `cout` | 1-bit | Output    | Carry (or borrow) out             |

## Files Included

- `add_sub.v` – Binary Adder-Subtractor top module  
- `full_add.v` – Full Adder submodule  
- `add_sub_tb.v` – Testbench for simulation  
- `add_sub_schematic.png` – Synthesized schematic diagram

## Tools Used

- Xilinx Vivado  
- Verilog HDL  

## How to Simulate

1. Open Vivado and create a new project.
2. Add the following files:
   - `add_sub.v`
   - `full_add.v`
   - `add_sub_tb.v`
3. Set `add_sub_tb.v` as the top module.
4. Run Behavioral Simulation.
5. Observe `sum` and `cout` values in waveform.

---
