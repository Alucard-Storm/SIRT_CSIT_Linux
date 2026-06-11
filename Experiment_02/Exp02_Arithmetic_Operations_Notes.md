# Experiment 02 — Arithmetic Operations | Notes

---

## Quick Guide to Arithmetic in Shell

### Choosing the Right Method
- **Standard Calculations (Integers)**: Use `$(( expression ))`. It is fast, clean, and built into the shell.
- **Variable Assignments (Integers)**: Use `let`. Example: `let x=x+1` or `let "y = x * 2"`.
- **Decimal/Floating Point Calculations**: Use `bc`. Example: `echo "scale=4; 22/7" | bc`.

### Comparison Table
| Method | Syntax | Handles Decimals? | Command Type |
|--------|--------|-------------------|--------------|
| `expr` | `expr 5 + 3` | No | External Binary |
| `let` | `let x=5+3` | No | Shell Built-in |
| `$(( ))` | `x=$((5 + 3))` | No | Shell Syntax |
| `bc` | `echo "5/3" \| bc` | Yes | Interactive CLI Calculator |

---

[Back to Main Index](../README.md)
