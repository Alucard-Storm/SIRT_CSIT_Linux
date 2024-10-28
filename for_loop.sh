# For Loop Example
# This script demonstrates a basic for loop in bash that counts from 0 to 10
# The syntax differs from other programming languages in a few ways:
# - Uses double parentheses (( )) for the loop condition
# - Uses 'do' and 'done' keywords instead of curly braces {}
# - Variable names don't need $ prefix in the loop condition
# - Loop variable i is initialized, checked, and incremented like in C-style languages

# for loop in unix uses double brackets
# do and done instead of {}
for ((i=0; i<=10; i++))
do
echo "loop ran $i time"
done