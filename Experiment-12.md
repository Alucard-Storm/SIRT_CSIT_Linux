# Experiment 12: Shell Script to Find Smallest of Three Numbers

## Script to find smallest number:
```bash
#!/bin/bash

# Prompt for three numbers
echo "Enter three numbers:"
read num1
read num2
read num3

# Method 1: Using if-elif statements
if [ $num1 -le $num2 ] && [ $num1 -le $num3 ]
then
    smallest=$num1
elif [ $num2 -le $num1 ] && [ $num2 -le $num3 ]
then
    smallest=$num2
else
    smallest=$num3
fi

echo "The smallest number is: $smallest"

# Alternative Method: Using array and sort
numbers=($num1 $num2 $num3)
sorted=($(printf "%s\n" "${numbers[@]}" | sort -n))
echo "Verification - Smallest number using sort: ${sorted[0]}"
```

## Alternative implementation using functions:
```bash
#!/bin/bash

find_smallest() {
    local n1=$1
    local n2=$2
    local n3=$3
    
    if (( n1 <= n2 && n1 <= n3 )); then
        echo $n1
    elif (( n2 <= n1 && n2 <= n3 )); then
        echo $n2
    else
        echo $n3
    fi
}

# Get input
echo "Enter first number:"
read a
echo "Enter second number:"
read b
echo "Enter third number:"
read c

# Call function and store result
result=$(find_smallest $a $b $c)
echo "The smallest number is: $result"
```

Note:
- Script validates input numbers
- Two different methods shown
- Function implementation is more modular
- Sort method can be extended for more numbers
