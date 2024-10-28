# Factorial of a Number
# This script calculates the factorial of a given number
# Factorial is the product of all positive integers from 1 to the given number
# For example: factorial of 5 (5!) = 5 x 4 x 3 x 2 x 1 = 120

echo "Enter the number"
read num
for ((i=1; i<=num; i++))
do
fact=`expr $num \* $i`
done
echo "Factorial of the given number is $fact"