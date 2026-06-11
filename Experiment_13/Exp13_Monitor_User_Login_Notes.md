# Experiment 13 — Monitor User Login Script | Notes

---

## Polling Loops & Redirection

### Redirection to `/dev/null`
The special file `/dev/null` is the **system black hole**. Anything written to it is discarded.
- `command > /dev/null`: Silences standard output (stdout).
- `command 2> /dev/null`: Silences error messages (stderr).
- `command > /dev/null 2>&1`: Silences both stdout and stderr.

### Terminal Carriage Return
`echo -ne "...\r"`:
- `-n`: Do not append a newline character at the end.
- `-e`: Enable interpretation of backslash escapes.
- `\r`: Carriage return. It moves the cursor to the start of the line, allowing the script to overwrite the current line (producing a countdown clock).

---

[Back to Main Index](../README.md)
