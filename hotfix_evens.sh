#!/bin/bash
#asking for a number
echo "Please enter a number:"
#reading the number
read number
#print number that was read
echo $number
#checking if the number is even or odd
if [ $((number % 2)) -eq 0 ]
then
#print number
echo "number is even"
else
#print number
echo "number is odd"
#end of if conditional 
fi