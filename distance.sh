#! /bin/bash
echo "Please enter two any coordinates:"
read point1
read point2
distance=$(echo "scale=2;sqrt($point1^2 + $point2^2)"|bc -l)
echo "The distance netween two points is: $distance"
