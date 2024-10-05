# Simple output
echo "Let's perform some operations"

# Take User Input
echo "write the first number"
read A
echo "write second number"
read B

# direct operations in echo
echo "Addition is "$(("A+B"))
echo "$A+$B" | bc

# Add
C=`expr $A + $B`
echo "Addition of both number is $C"

# Substract
C=`expr $A - $B`
echo "Substraction of both number is $C"

# Multiply
C=`expr $A \* $B`
echo "Multiplication of both number is $C"

# Division
C=`expr $A / $B`
echo "Division of both number is $C"

# Remainder
C=`expr $A % $B`
echo "Remainder of both number is $C"

# If Statement
if [ $A == $B ]
then
    echo "Both numbers are same"
else
    echo "Both numbers are different"
fi
