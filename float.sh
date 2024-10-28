#!/usr/bin/bash

# bc stands for basic calculations
# bc is used for floating point arithmetic operations in bash
# The | operator pipes the expression to bc for evaluation
# Without bc, bash can only handle integer arithmetic

# Declare floating point numbers
d=10.2
e=5.5

# Addition of floating point numbers
echo "$d+$e" | bc

# Subtraction of floating point numbers 
echo "$d-$e" | bc

# Multiplication of floating point numbers
echo "$d*$e" | bc

# Division of floating point numbers
echo "$d/$e" | bc

# Modulus (remainder) of floating point numbers
echo "$d%$e" | bc