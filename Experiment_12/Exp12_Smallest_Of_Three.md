# Experiment 12 — Shell Script to Find Smallest of Three Numbers

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To write a Bash script to compare three numbers and output the smallest value using conditions and functions.

## 2. Theory
Integer comparisons in Bash use condition evaluation operators inside brackets:
- **`-le`**: Less than or equal to.
- **`-lt`**: Less than.
- **`-ge`**: Greater than or equal to.
- **`-gt`**: Greater than.
- **`-eq`**: Equal.
- **`-ne`**: Not equal.

These comparisons can be evaluated using standard `if-elif-else` branches, arithmetic contexts `(( ... ))`, or by sorting values in a pipeline.

## 3. Implementation Code

```bash
# 1. Create a script to find the smallest number
cat << 'EOF' > smallest.sh
#!/bin/bash

# Accept three inputs
echo "Enter three numbers:"
read num1
read num2
read num3

# Method 1: Using if-elif-else statements
if [ $num1 -le $num2 ] && [ $num1 -le $num3 ]
then
    smallest=$num1
elif [ $num2 -le $num1 ] && [ $num2 -le $num3 ]
then
    smallest=$num2
else
    smallest=$num3
fi

echo "Smallest number: $smallest"

# Method 2: Using Bash array and sort command pipeline
numbers=($num1 $num2 $num3)
sorted=($(printf "%s\n" "${numbers[@]}" | sort -n))
echo "Smallest using sort: ${sorted[0]}"
EOF

# 2. Make executable and run
chmod +x smallest.sh
./smallest.sh << 'EOF'
23
12
45
EOF

# 3. Modular version using functions
cat << 'EOF' > smallest_func.sh
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

echo "Function smallest check (5, 9, 2): $(find_smallest 5 9 2)"
EOF
chmod +x smallest_func.sh
./smallest_func.sh
```

## 4. Expected Output

```text
Enter three numbers:
Smallest number: 12
Smallest using sort: 12
Function smallest check (5, 9, 2): 2
```

## 5. Viva / Discussion Questions
1. **What do comparison operators `-le`, `-lt`, and `-ge` represent in Bash?**
2. **How do you declare a custom function in a shell script?**
3. **What is the purpose of the `local` keyword inside a function?**
4. **How does arithmetic evaluation `(( a <= b ))` differ from `[ $a -le $b ]`?**
5. **Explain the sorting pipeline `printf "%s\n" "${numbers[@]}" | sort -n`.**

---

[Back to Main Index](../README.md)
