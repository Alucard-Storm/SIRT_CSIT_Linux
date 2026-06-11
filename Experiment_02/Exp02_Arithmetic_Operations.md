# Experiment 02 — Arithmetic Operations

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To perform arithmetic operations using various commands and shell structures in Unix/Linux.

## 2. Theory
Unix/Linux supports multiple methods for arithmetic evaluation:
1. **`expr`**: An utility to evaluate expressions. It requires spaces between operators and operand, and special characters (like `*`) must be escaped.
2. **`let`**: A built-in command for integer arithmetic. Variables do not need the `$` prefix.
3. **`bc`**: A command-line arbitrary precision calculator language. It is the only standard CLI tool that natively supports floating-point math.
4. **Shell Arithmetic `$(())`**: The standard modern Bash syntax for integer evaluations.

## 3. Implementation Code

```bash
# 1. Using expr command
expr 5 + 3                          # Addition
expr 10 - 4                         # Subtraction
expr 5 \* 3                         # Multiplication (asterisk must be escaped)
expr 15 / 3                         # Division

# 2. Using let command
let sum=5+3; echo $sum
let diff=10-4; echo $diff
let prod=5*3; echo $prod
let div=15/3; echo $div

# 3. Using bc (Basic Calculator) for floating point math
echo "5+3" | bc
echo "scale=2; 15/4" | bc           # Scale sets decimal places

# 4. Using Shell Arithmetic
sum=$((5 + 3))
diff=$((10 - 4))
prod=$((5 * 3))
div=$((15 / 3))
echo "Sum: $sum, Diff: $diff, Prod: $prod, Div: $div"

# 5. Bash Script Example for Arithmetic Operations
cat << 'EOF' > calc.sh
#!/bin/bash
echo "Enter two numbers:"
read num1 num2
echo "Sum: $((num1 + num2))"
echo "Difference: $((num1 - num2))"
echo "Product: $((num1 * num2))"
echo "Division: $((num1 / num2))"
EOF
chmod +x calc.sh
./calc.sh << 'EOF'
12 4
EOF

```

## 4. Expected Output

```text
8
6
15
5
8
3.75
Sum: 8, Diff: 6, Prod: 15, Div: 5
Enter two numbers:
Sum: 16
Difference: 8
Product: 48
Division: 3
```

## 5. Viva / Discussion Questions
1. **What is the difference between `expr` and `let`?**
2. **Why must the asterisk (`*`) be escaped when using the `expr` command?**
3. **Which command or utility is suitable for floating-point arithmetic in Unix?**
4. **What is the syntax for standard shell arithmetic in Bash?**
5. **What does the `scale` variable do in the `bc` calculator?**

---

[Back to Main Index](../README.md)
