# Experiment 11: Shell Script to Print Arguments in Reverse Order

## Script to reverse arguments:
```bash
#!/bin/bash

# Check if arguments were provided
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo "Usage: $0 arg1 arg2 arg3 ..."
    exit 1
fi

# Store arguments in an array
args=("$@")

# Print total number of arguments
echo "Total arguments: $#"

# Print arguments in reverse order
echo "Arguments in reverse order:"
for (( i=$#; i>0; i-- ))
do
    echo "${args[i-1]}"
done
```

## How to use:
1. Save as reverse_args.sh
2. Make executable:
   chmod +x reverse_args.sh
3. Run with arguments:
   ./reverse_args.sh arg1 arg2 arg3

## Example outputs:
```bash
# ./reverse_args.sh apple banana orange
Total arguments: 3
Arguments in reverse order:
orange
banana
apple

# ./reverse_args.sh 1 2 3 4 5
Total arguments: 5
Arguments in reverse order:
5
4
3
2
1
```

Note: 
- $# gives the number of arguments
- "$@" expands to all arguments
- Arrays in bash are zero-based
- Script handles any number of arguments
