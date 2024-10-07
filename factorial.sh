# Factorial of a Number

echo "Enter the number"
read num
for ((i=1; i<=num; i++))
do
fact=`expr $num \* $i`
done
echo "Factorial of the given number is $fact"