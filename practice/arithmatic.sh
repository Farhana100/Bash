#! /usr/bin/bash

# For integers only

num1=20
num2=15

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

echo $num1 + $num2  # doesn't add


# another way, using expr command 

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )        # in this case we must escape *
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )

echo
echo    -----------------------------------
echo
# For decimals using basic arithmatic calculator

num1=20.5
num2=10.2

echo "20.5+5" | bc 
echo "20.5-5" | bc 
echo "20.5*5" | bc 
echo "scale=2;20.5/5" | bc  # scale=x; upto x decimal points, works only for division
echo "20.5%5" | bc 

# square root, pow
num=9
echo "scale=2;sqrt($num)" | bc -l   # -l for math library, req for using sqrt() function
echo "scale=2;3^3" | bc -l