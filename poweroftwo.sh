#! /bin/bash
echo -e "Enter any number:\c"
read number


echo "The power of two is as follows:"
for((i=0;i<=number;i++))
do
 echo "scale=2;2^$i"|bc -l
done
