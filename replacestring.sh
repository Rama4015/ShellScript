#! /bin/bash 
echo -e "Please enter the user name:\c"
read name
  if [ ${#name} -ge 3 ]
  then
   echo "Hello $name ,How are you?"
  else
   echo "Please enter the valid user name!!"
  fi
