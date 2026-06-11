# Experiment 11 — Shell Script to Print Arguments in Reverse Order | Notes

---

## Shell Variables & Arrays

Think of script arguments like **delivery boxes**:
- **`$#`** is the **box counter** (tells you how many packages were delivered).
- **`$@`** is the **entire pallet** containing each individual box.
- **`$1`, `$2`, `$3`** are the **individual labels** on the first, second, and third boxes.
- **`$0`** is the **delivery truck's license plate** (the script itself).

### Reverse Loop Logic:
Since array indices are zero-based, the last element is at index `$# - 1`. The loop runs from `i = $#` down to `1`, printing `${args[i-1]}`.

---

[Back to Main Index](../README.md)
