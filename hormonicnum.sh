#! /bin/bash
echo -e "Enter the number to find the nth harmonic number:\c"
read number
sum=0

for(( i=1;i<=number;i++ ))
do
sum=$( awk -v num1=$sum -v num2=$i 'BEGIN { print ( num1 + 1/num2 ) } ' )
done
echo "Nth harmonic number is equals to $sum"
