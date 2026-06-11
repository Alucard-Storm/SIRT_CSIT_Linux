# Experiment 09 — Executing Shell Commands in Vi Editor

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To execute shell commands and read their output into the document using command mode in the Vi editor.

## 2. Theory
The Vi/Vim editor has a built-in command execution interface.
- **`:!command`**: Run `command` in a subshell, print results, and return to Vi.
- **`:r !command`**: Run `command` and insert its stdout at the cursor position.
- **`:w !command`**: Send current file contents as stdin to `command`.
- **`:%!command`**: Filters/replaces contents of the file with command output.
- **`:shell`**: Suspends Vi and opens an interactive shell.

## 3. Implementation Code

```bash
# 1. Create a dummy file in Vi
cat > vi_demo.txt << 'EOF'
Apples
Oranges
Bananas
EOF

# 2. Simulating Vi command executions:
# Run ls within vi:
# Enter command mode (ESC) and execute:
# :!ls -la

# 3. Read output of system date into current file:
# :r !date

# 4. Compile C script directly within vi:
# :!gcc % -o output_program

# 5. Filter file content using external sort command:
# :%!sort
```

## 4. Expected Output

```text
(Within Vi editor, running :r !date will yield)
Apples
Oranges
Bananas
Thu Jun 11 14:50:02 IST 2026

(Running :%!sort yields)
Apples
Bananas
Oranges
```

## 5. Viva / Discussion Questions
1. **How do you execute a shell command from within Vi without exiting the editor?**
2. **What is the functional difference between `:!date` and `:r !date` in Vi?**
3. **What does the `%` symbol represent when running an external command like `:!gcc %`?**
4. **How do you start an interactive shell from inside Vi, and how do you return to Vi?**
5. **How can you sort a range of lines in Vi using the external `sort` command?**

---

[Back to Main Index](../README.md)
