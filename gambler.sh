#! /bin/bash
echo -e "Enter the stake:\c"
read stake
echo -e "Enter the goal:\c"
read goal
echo -e "Enter the number of trails:\c"
read trails

bets=0
wins=0


   #repeat trails times
   for(( t=0;t<trails;t++ ))
   do
      cash=$stake
      while [ $cash -gt 0 -a $cash -lt $goal ]
      do
        ((bets++))
        if [ $(($RANDOM % 2)) -eq 0 ]
        then
        ((cash++))
        else
        ((cash--))
        fi
      done
      if [ $cash -eq $goal ]
      then
      ((wins++))
      fi
  done
echo  "Number of wins is equals to: $wins"
echo  -e "win percentage : \c"
echo "scale=3 ; ($wins/$trails)*100 " | bc -l
echo -e "Loss pecentage : \c" 
echo "scale=2 ; (($trails-$wins)/$trails)*100" | bc
