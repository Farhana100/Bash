#! /usr/bin/bash


# STRING    -----------------------------------------------------------

string=jskfskfskjfhkjshf

echo $string            # as variable
echo "${string[@]}"     # as array
echo "${string[0]}"     # prints whole string, because in variable the whole value is assigned to the first location
echo "${string[1]}"     # print blank
echo "${#string[@]}"    # print length 1