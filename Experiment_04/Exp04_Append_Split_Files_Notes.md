# Experiment 04 — Appending and Splitting Files | Notes

---

## Appending vs Splitting

### Appending
Redirection operators guide data flows:
- `command > file`: Directs output to `file`, wiping existing content.
- `command >> file`: Appends output to the tail of `file`.

### Splitting Logs
For massive log files, the `split` command is invaluable.
```bash
# Split a 1GB log into 100MB chunks
split -b 100M large_database_log.log log_part_
```
This helps in viewing logs using tools like nano or vi, which might crash on huge files.

---

[Back to Main Index](../README.md)
