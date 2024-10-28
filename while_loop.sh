# While Loop Example
# This script demonstrates a basic while loop in bash that counts from 1 to 10
# The syntax includes several bash-specific elements:
# - Uses square brackets [ ] for the condition test
# - -le operator means "less than or equal to"
# - Uses 'do' and 'done' keywords to define the loop body
# - ((i++)) is used for incrementing the counter variable
# - Variable i needs $ prefix when used in condition but not in increment

i=1
while [ $i -le 10 ]
do
echo "Loop ran $i times"
((i++))
done