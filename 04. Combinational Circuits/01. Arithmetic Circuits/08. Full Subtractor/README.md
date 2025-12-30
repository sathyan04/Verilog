# Full Subtractor

This project demonstrates the Verilog implementation of a **1-bit Full Subtractor** using direct Boolean logic. A full subtractor performs the subtraction of three 1-bit binary inputs: A (minuend), B (subtrahend), and C (borrow-in).

---

## 🔢 Logic Description

### Inputs:
- `a`
- `b`
- `c`

### Outputs:
- `diff`
- `bor`

### Logic Expressions:
- `diff = a ^ b ^ c`
- `bor = (~a & b) | (~a & c) | (b & c)`

---

## ✅ Truth Table

| A | B | C | Diff | Bor |
|---|---|-----|------|------|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  1   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

---

## 🧾 Files Included

- `full_subtractor.v` – RTL module using direct logic
- `full_subtractor_tb.v` – Testbench with `$monitor`
- `full_subtractor_schematic.png` – (Optional) Synthesized logic schematic from Vivado

---

## 🛠 Tools Used

- Xilinx Vivado  
- Verilog HDL  
- Behavioral Simulation

---

## ▶️ How to Run

1. Create a new project in Vivado.
2. Add `full_subtractor.v` and `full_subtractor_tb.v`.
3. Set `full_subtractor_tb` as the top module.
4. Run simulation to verify output in console or waveform.

---
