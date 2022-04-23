#! /usr/bin/bash

# takes a command line argument -> vehicle name

vehicle=$1

# string case
case $vehicle in 
    "car" )
        echo "Rent of $vehicle is 100 dollar" ;;    
    "van" )
        echo "Rent of $vehicle is 80 dollar" ;;
    "bicycle" )
        echo "Rent of $vehicle is 5 dollar" ;;
    "truck" )
        echo "Rent of $vehicle is 150 dollar" ;;
    * )
        echo "Unknown vehicle" ;;
esac

# -e and \c will cause the curser to stay in the same line
echo -e "Enter some character: \c"
read value

# evaluate within range case
case $value in
    [a-z] )
        echo "$value is lowercase" ;;
    [A-Z] )
        echo "$value is uppercase" ;;
    [0-9] )
        echo "$value is a digit" ;;
    ? )
        echo "$value is a special character" ;;
    * )
        echo "Unknown input" ;;
esac

num1=9
num2=3
num3=num1+num2              # value is "num1+num2" i.e string addition
num3=$num1+$num2            # value is "9+3" i.e still string addition
num3=$(( num1 + num2 ))     # value addition

echo $num3

# compare numeric valued case
case $(expr $num1 + $num2 ) in
    "12" )
        echo "bleh" ;;
    * )
        echo "no bleh" ;;
esac

case $num3 in
    "12" )
        echo "bleh" ;;
    * )
        echo "no bleh" ;;
esac

num3=12

case $(( num1 + num2 )) in
    $num3 )
        echo "bleh" ;;
    * )
        echo "no bleh" ;;
esac