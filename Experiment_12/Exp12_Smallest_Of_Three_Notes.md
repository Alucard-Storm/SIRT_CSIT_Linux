# Experiment 12 — Shell Script to Find Smallest of Three Numbers | Notes

---

## Integer Comparison Syntax

In Bash, you can use two main syntaxes:
1. **POSIX brackets `[ ]`**: Use operators like `-eq`, `-ne`, `-lt`, `-le`, `-gt`, `-ge`.
   *Example:* `[ $a -le $b ]`
2. **Double Parentheses `(( ))`**: Use standard math symbols like `==`, `!=`, `<`, `<=`, `>`, `>=`.
   *Example:* `(( a <= b ))`

### Modularization:
Functions in Bash allow packaging code block statements. Use the `local` keyword inside functions to prevent variables from altering scripts globally.

---

[Back to Main Index](../README.md)
