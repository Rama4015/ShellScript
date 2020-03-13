#! /bin/bash 
echo -e "Enter the year:\c"
read year
echo "Enter the year:"
if [ $year -ge 1000 ]
then
    if [ $((year % 4)) -eq 0 -a $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]
    then
        echo "The given year is leap year!!"
    else
        echo "The given year is not leap year."
    fi
else
   echo "Please enter correct input"
fi
