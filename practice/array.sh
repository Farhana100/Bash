#! /usr/bin/bash

# ARRAY ---------------------------------------------------------------

os=('ubuntu' 'windows' 'kali')

echo "${os[@]}"     # prints all elements 
echo "${os[0]}"
echo "${os[1]}"
echo "${os[2]}"
echo "${os[3]}"     # out of range, will print blank
echo "${os[-1]}"     # negative index -1, will print [2] element
echo "${os[-2]}"     # negative index -2, will print [1] element
echo "${os[-3]}"     # negative index -3, will print [0] element
echo "${os[-4]}"     # negative index out of range, give error
echo
echo "${!os[@]}"    # prints the indecies of the array
echo "${#os[@]}"    # array length

os[3]="mac"     # add elements
echo "${os[@]}"
echo "${#os[@]}"

os[5]='mac'
echo "${os[@]}"
echo "${!os[@]}"
echo "${#os[@]}"

echo "${os[4]}" # index does not exist, hence print blank

os[0]="update"  # update element
echo "${os[@]}"

unset os[3]     # remove index
echo 3 removed
echo "${!os[@]}"