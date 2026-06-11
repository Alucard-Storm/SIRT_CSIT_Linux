# Experiment 03 — Word, Line, and Character Count | Notes

---

## How Word Count Works Internally

The `wc` utility counts words by looking for transitions between whitespace characters (spaces, tabs, newlines) and non-whitespace characters.

### Practical Use Cases:
- **Checking log sizes**: `wc -l /var/log/syslog` tells you how many log entries exist.
- **Counting directory entries**: `ls -l | wc -l` counts the number of files/folders in a directory (minus the total line).
- **Checking password database**: `wc -l /etc/passwd` counts the total system user accounts.

---

[Back to Main Index](../README.md)
