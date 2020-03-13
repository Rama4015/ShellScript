#! /bin/bash 
echo "Please the coeffients of quadratic equation"
read a
read b
read c
delta=$(echo "$b^2 - 4 * $a * $c" | bc)
if [ $delta -gt 0 ]
then
root1=$(echo " scale=3;( - $b + sqrt($delta)) / (2 * $a)" | bc -l )
root2=$(echo " scale=3;( - $b - sqrt($delta)) / (2 * $a)" | bc -l )
echo "The roots of quadratic equation are:"
echo "$root1"
echo "$root2"

else
echo "The delta is less than or equals to zero!!"
fi
