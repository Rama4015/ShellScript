#! /bin/bash 
echo -e "Please enter the temptreture:\c"
read temp
echo -e "Please enter the speed of wind:\c"
read speed


if [ $temp -gt 50 -a $speed -gt 120 -o  $speed -lt 3 ]
then
echo "Please enter the correct inputs"
else
windchill=$(awk -v num1=$temp -v num2=$speed 'BEGIN { print ( 35.74 +0.6215*num1 + (0.4275*num1-35.74) * (num2^0.16) ) } ' )
 echo "The windchill is: $windchill"
fi
