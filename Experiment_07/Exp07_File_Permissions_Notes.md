# Experiment 07 — Changing File Permissions | Notes

---

## Octal Calculation Table

| Permission | Binary | Octal | Description |
|------------|--------|-------|-------------|
| `---` | `000` | `0` | No permissions |
| `--x` | `001` | `1` | Execute only |
| `-w-` | `010` | `2` | Write only |
| `-wx` | `011` | `3` | Write and execute |
| `r--` | `100` | `4` | Read only |
| `r-x` | `101` | `5` | Read and execute |
| `rw-` | `110` | `6` | Read and write |
| `rwx` | `111` | `7` | Full permissions |

### Directory Permissions:
- **Read (r)**: Allows listing files inside directory.
- **Write (w)**: Allows adding/removing files in directory.
- **Execute (x)**: Allows entering directory (`cd`).

---

[Back to Main Index](../README.md)
