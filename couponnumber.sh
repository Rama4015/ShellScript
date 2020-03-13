#! /bin/bash -x
echo  -e "Enter the distinct coupon number:\c"
read couponnum
declare -A array
count=0
distinct=0

   getcoupon()
   {
    return $(( ( $RANDOM % $1 ) + 1 ))
   }

   while [ $distinct -lt $couponnum ]
   do
      value=$( getcoupon $couponnum )
      echo "$value" 
      ((count++))
       if [ -ne ${array[ $value ]} ]
       then
       ((distinct++))
       array[ $distinct ]=$value
       fi
   done
    echo "$distinct"
    echo "${array[@]}"
