# Experiment 2: Arithmetic Operations in Unix/Linux

## Using expr command:
1. Addition:
   expr 5 + 3
   Result: 8

2. Subtraction:
   expr 10 - 4
   Result: 6

3. Multiplication:
   expr 5 \* 3    # Note: asterisk must be escaped
   Result: 15

4. Division:
   expr 15 / 3
   Result: 5

## Using let command:
let sum=5+3
let diff=10-4
let prod=5*3
let div=15/3

## Using bc (Basic Calculator):
echo "5+3" | bc
echo "10-4" | bc
echo "5*3" | bc
echo "15/3" | bc

## Using Shell Arithmetic:
sum=$((5 + 3))
diff=$((10 - 4))
prod=$((5 * 3))
div=$((15 / 3))

## Example Script for Basic Calculator:
```bash
#!/bin/bash
echo "Enter two numbers:"
read num1 num2
echo "Sum: $((num1 + num2))"
echo "Difference: $((num1 - num2))"
echo "Product: $((num1 * num2))"
echo "Division: $((num1 / num2))"
```

Note: bc is more suitable for floating-point arithmetic while other methods are primarily for integer arithmetic.
