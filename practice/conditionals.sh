#! /usr/bin/bash

# if statement

#   if [condition]      <- if start
#   then
#       statement
#   fi                  <- end if
#

#======================================================
#   Integer comparison:
#
#   -eq     is equal to                     if [ $a -eq $b ]
#   -ne     is not equal to                 if [ $a -ne $b ]
#   -gt     is greater than                 if [ $a -gt $b ]
#   -ge     is greater than or equal to     if [ $a -ge $b ]
#   -lt     is less than                    if [ $a -lt $b ]
#   -le     is less than or equal to        if [ $a -le $b ]
#
#   <       is less than                    (("$a" < "$b"))         also with single sq braces
#   <=      is less than or equal to        (("$a" <= "$b"))
#   >       is greater than                 (("$a" > "$b"))
#   >=      is greater than  or equal to    (("$a" >= "$b"))
#
#   String comparison:
#
#   =      is equal to                                      if [ "$a" = "$b" ]
#   ==     is equal to                                      if [ "$a" == "$b" ]
#   !=     is not equal to                                  if [ "$a" != "$b" ]
#   <      is less than, in ASCII alphabetical order        if [[ "$a" < "$b" ]]
#   >      is greater than, in ASCII alphabetical order     if [[ "$a" > "$b" ]]
#   -z     string is null, zero length
#======================================================


count=10
if [ $count -gt 9 ]     # must use spaces 
then 
    echo "true 1"
fi


if [ $count -eq 10 ]
then 
    echo "true 2"
fi

if [ $count != 10 ]
then 
    echo "true 3"
else
    echo "false 3"
fi

if ((       $count   >  9 ))    # may or may not use spaces
then 
    echo "true 4"
fi

word=abc

if (($word == "abc"))
then 
    echo "true 5"
fi

if [[ $word == "abc" ]]     # must use spaces
then 
    echo "true 6"
fi

if [ $word == "abc" ]
then 
    echo "true 7"
fi

if [[ $word > "ab" ]]
then 
    echo "true 8"
fi

if [[ $word < "ab" ]]
then 
    echo lesser 9
elif [[ $word == "ab" ]]
then
    echo equal 9
else
    echo greater 9
fi