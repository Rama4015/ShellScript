#! /bin/bash 
echo -e "Enter the number of trails:\c"
read trails
trails1=$trails
heads=0
tails=0
    while [ $trails -gt 0 ]
    do
          res=$((RANDOM % 2))
           if [ $res = 0 ]
            then
            ((heads++))
           else
            ((++tails))
           fi
     ((--trails))
     done
     echo -e "The heads percentage is:\c"
      res1=$(echo "scale=3;$heads/$trails1*100"|bc)
      echo "$res1"
     echo -e "The tails percentage is:\c"
      res2=$(echo "scale=3;$tails/$trails1*100"|bc)
     echo "$res2"
