# Experiment 11 — Shell Script to Print Arguments in Reverse Order

**Subject:** CSIT-505 Linux Lab
**Location:** RGPV, Bhopal

---

## 1. Aim
To write and execute a Bash shell script that accepts CLI parameters and prints them in reverse order.

## 2. Theory
Shell scripts handle parameters via positional variables:
- **`$0`**: Script path/filename.
- **`$1` to `$N`**: Script input parameters.
- **`$#`**: Total number of parameters.
- **`"$@"`**: String array containing all parameters.

We can capture command line parameters in a standard array, then print them starting from the final index (`$# - 1`) down to zero.

## 3. Implementation Code

```bash
# 1. Create the reverse script
cat << 'EOF' > reverse_args.sh
#!/bin/bash

# Validate that arguments are provided
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo "Usage: $0 arg1 arg2 arg3 ..."
    exit 1
fi

# Convert positional arguments into a Bash array
args=("$@")

# Output statistics
echo "Total arguments: $#"
echo "Arguments in reverse order:"

# Loop backwards using the argument count
for (( i=$#; i>0; i-- ))
do
    echo "${args[i-1]}"
done
EOF

# 2. Add execute permission to the script
chmod +x reverse_args.sh

# 3. Execute the script with arguments
./reverse_args.sh apple banana orange
./reverse_args.sh 10 20 30 40 50
```

## 4. Expected Output

```text
Total arguments: 3
Arguments in reverse order:
orange
banana
apple
Total arguments: 5
Arguments in reverse order:
50
40
30
20
10
```

## 5. Viva / Discussion Questions
1. **What is the meaning of `$#` in shell scripts?**
2. **How does `"$@"` differ from `"$*"` when evaluating parameters?**
3. **Are Bash array indices zero-based or one-based?**
4. **What does `$0` represent in a shell script?**
5. **How do you check if the number of arguments passed to a script is zero?**

---

[Back to Main Index](../README.md)
