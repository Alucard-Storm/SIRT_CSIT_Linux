# if Else Conditioning
# -eq : equal to
# -ne : not equal
# -gt : greater than
# -ge : greater than or equal
# -lt : less than
# -le : less than or equal

echo "Enter age"
# user input using read
read age

# If statement start with if and ends with fi
# It uses then for defining what to do if the condition is true, else does not need to use then
if [ $age -ge 18 ]
then
echo "Above 18"
else
echo "Less than 18"
fi