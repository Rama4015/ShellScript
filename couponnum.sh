#! /bin/bash
echo -e "Please enter number to print distinct coupon number:\c"
read n
generateDistinctCoupon()
{
   small=({a..z})
   big=({A..z})
   while (( $n > 0 ))
   do 
          a=$(shuf -i 0-25 -n 1)
          b=$(shuf -i 0-25 -n 1)
          random1=$(shuf -i 0-25 -n 1)
          random2=$(shuf -i 0-25 -n 1)
          random3=$(shuf -i 100-1000 -n 1)
          random4=$(shuf -i 1000-2000 -n 1)
          echo -e "coupon number $n is:\c"
          echo $b$random4${small[$random1]}$random4${big[$random2]}$random3${small[$a]}${big[$b]}
          n=$((n-1))
    done
}
generateDistinctCoupon
