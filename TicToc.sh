#! /bin/bash
declare -A array
   setBoard()
   {
       for ((i=1 ;i<=3 ; i++)) 
       do
           for((j=1;j<=3;j++))
           do
             array[$i,$j]=_
           done
       done
   }
   displayMat()
   {
     for((i=1;i<=3;i++))
     do
        for((j=1;j<=3;j++))
        do
          echo -e "${array[$i,$j]} | \c"
        done
       echo
     done
   }
   playComputer()
   {
     echo "Computer turn" 
     sym="x"
     r=$(shuf -i 1-3 -n 1)
     c=$(shuf -i 1-3 -n 1)
     if [[ "${array[$r,$c]}" == "_" ]]
     then
       array[$r,$c]="$sym"
     else
      echo "opps!! invalid inputs"
        playComputer
     fi
    }
    playUser()
    {
      if(($count>o))
      then
       echo "User turn"
       sym="o"
       read r
       read c
         if [[ "${array[$r,$c]}" == "_" ]]
         then
           array[$r,$c]="$sym"
         else
          echo "opps!! invalid input"
           if ((count>0))
           then
             playUser
           fi
         fi
       fi
    }

   checkForWin()
   {
      row1="${array[1,1]}${array[1,2]}${array[1,3]}"
      row2="${array[2,1]}${array[2,2]}${array[2,3]}"
      row3="${array[3,1]}${array[3,2]}${array[3,3]}"
      col1="${array[1,1]}${array[2,1]}${array[3,1]}"
      col2="${array[1,2]}${array[2,2]}${array[3,2]}"
      col3="${array[1,2]}${array[2,3]}${array[3,3]}"
      dia1="${array[1,1]}${array[2,2]}${array[3,3]}"
      dia2="${array[1,3]}${array[2,2]}${array[3,1]}"
      com="xxx"
      user="ooo"
        if [[ $row1 == $com || $row2 == $com || $row3 == $com || $col1 == $com || $col2 == $com || $col3 == $com || $dia1 == $com || $dia2 == $com ]]
        then
           echo "Congrats computer is win..."
           bash tictoc.sh
        elif [[ $row1 == $user || $row2 == $user || $row3 == $user || $col1 == $user ||$col2 == $user || $col3 == $user || $dia1 == $user || $dia2 == $user ]]
        then
           echo "Congrats user is win..."
           bash tictoc.sh
        fi
   }

    echo "%%%%%%%%%%%%%%%%%WELCOME TO TICTOCTOE GAME!!%%%%%%%%%%%%%%%%%%"
    setBoard
    displayMat
    echo "x for computer"
    echo "o for Player"
    count=9
    gameStart=$((RANDOM%2))
     if [ $gameStart -eq 0 ]
     then
       echo "Congrats Computer win the toss"
       while (($count>0))
       do
          playComputer
          count=$(($count-1))
          displayMat
          checkForWin
          playUser
          count=$(($count-1))
          displayMat
          checkForWin
          if (($count<0))
          then
            echo "Match TIE !!!!"
          fi
       done
         else
           echo "Congrats User win the toss"
             while (($count>0))
             do
               playUser
               count=$(($count-1))
               displayMat
               checkForWin
               playComputer
               count=$(($count-1))
               displayMat
               checkForWin
               if (($count<0))
               then
                  echo "Match TIE !!!!"
               fi
             done
          fi


