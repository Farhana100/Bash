#! /usr/bin/bash

# for loops

# method 1
# for VARIABLE in 1 2 3 4 5 .. N 
# do 
#     command1
#     command2
#     command3
# done

# or ----------------------------------------------------------

# method 2
# for VARIABLE in file1 file2 file3
# do 
#     command1 on $VARIABLE
#     command2
#     command3
# done

# or ----------------------------------------------------------

# method 3
# for OUTPUT in $(Linux-Or-Unix-Command-Here)
# do 
#     command1 on $OUTPUT
#     command2 on $OUTPUT
#     command3
# done

# or ----------------------------------------------------------

# method 4
# for (( EXP1; EXP2; EXP3 ))
# do 
#     command1
#     command2
#     command3
# done

echo "iterate in a list:"
for i in 1 2 3 4 5
do 
    echo $i
done

echo 
echo

echo "iterate within a range:"
for i in {1..10}    # {start..end}
do
    echo $i
done

echo
echo

echo "iterate within a range with constant increment 2"
for i in {1..10..2} # {start..end..increment}
do
    echo $i
done

echo
echo

echo "iterate within a range with constant increment 1"
for (( i=0; i<5; i++ ))
do
    echo $i
done

echo
echo

echo "loop through the list of commands"
for command in ls pwd date      # loop through the list of commands
do 
    echo "-------------------------------------------"
    echo $command       # print each command
    $command            # execute each command
done

echo
echo

echo "all directories and file names"
for item in *       # * gives all directory and file names
do
    if [ -f $item ]     # if file then print
    then
        echo $item
    fi
done











