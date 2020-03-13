#! /bin/bash
declare -A matrix
echo -e "Enter the number of rows:\c"
read num_rows
echo -e "Enter the number of columns:\c"
read num_columns

   for (( i=1;i<=num_rows;i++ ))
   do
       for (( j=1;j<=num_columns;j++ ))
       do
       read number
       x=$number
       matrix[ $i,$j ]=$x
       done
   done

   echo "The 2d Array"
   for (( i=1;i<=num_rows;i++ ))
   do
      for(( j=1;j<=num_columns;j++ ))
      do
      echo -e "${matrix[ $i,$j ]}  \c"
      done
      echo
   done
