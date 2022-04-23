#! /usr/bin/bash

# LOOPs

# While ----------------------------------------------------------

# while [ condition ]
# do 
#   command1
#   command2
#   command3
# done


n=1

while [ $n -le 10 ]
do 
    echo $n
    n=$(( n+1 ))
done

n=1

while [ $n -le 10 ]
do 
    echo $n
    (( n++ ))
done

n=1
while (( $n <= 10 ))
do 
    echo $n
    (( ++n ))
done


# using sleep in loop ------------------------------------------------
# break from infinite loop -> ctrl+c

n=1
while (( $n <= 10 ))
do 
    echo $n
    (( ++n ))
    sleep 1         # sleep for 1 second
done

# open multiple terminals using loop ---------------------------------

n=1

while (( $n <= 3 ))
do
    (( n++ ))
    gnome-terminal &
done






