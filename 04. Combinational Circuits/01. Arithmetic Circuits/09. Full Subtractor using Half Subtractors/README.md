# Full Subtractor Using Half Subtractors

This project demonstrates the Verilog implementation of a **1-bit Full Subtractor** using two **Half Subtractor** modules and an OR gate. This modular approach is commonly used in digital design for better readability and reuse.

---

## 🔢 Logic Description

### Inputs:
- `a`
- `b`
- `bin`

### Outputs:
- `diff`
- `bor`

---

## ⚙️ Functional Breakdown

1. **First Half Subtractor:**
   - Inputs: `a`, `b`
   - Outputs: `diff1`, `bor1`

2. **Second Half Subtractor:**
   - Inputs: `diff1`, `bin`
   - Outputs: `diff`, `bor2`

3. **Final Borrow Calculation:**
   - `bor = bor1 | bor2`

---

## ✅ Truth Table

| A | B | Bin | Diff | Bor |
|---|---|-----|------|-----|
| 0 | 0 |  0  |  0   |  0  |
| 0 | 0 |  1  |  1   |  1  |
| 0 | 1 |  0  |  1   |  1  |
| 0 | 1 |  1  |  0   |  1  |
| 1 | 0 |  0  |  1   |  0  |
| 1 | 0 |  1  |  0   |  1  |
| 1 | 1 |  0  |  0   |  0  |
| 1 | 1 |  1  |  1   |  1  |

---

## 📁 Files Included

- `half_subtractor.v` – Verilog module for half subtractor  
- `full_subtractor.v` – Full subtractor using two half subtractors  
- `subtractor_testbench.v` – Testbench for simulation  
- `subtractor_schematic.png` – (Optional) Schematic generated from Vivado

---

## 🛠 Tools Used

- Xilinx Vivado  
- Verilog HDL  
- Behavioral Simulation

---

## ▶️ How to Simulate

1. Open Vivado and create a new RTL project.
2. Add the following files to your project:
   - `half_subtractor.v`
   - `full_subtractor.v`
   - `subtractor_testbench.v`
3. Set `subtractor_testbench` as your top module.
4. Run Behavioral Simulation and verify `diff` and `bor` outputs.

---
