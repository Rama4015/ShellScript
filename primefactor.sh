#! /bin/bash 
echo -e "Please enter the number to be find prime factors:\c"
read number

  echo "The prime factors are:"
  for(( i=2;i<number;i++ ))
  do
     while(( $number % $i == 0 ))
     do
     echo "$i"
     number=$(expr $number / $i )
     done
  done
   if [ $number -gt 2 ]
   then
   echo "$number"
   fi
