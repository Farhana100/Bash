#! /usr/bin/bash

# how to appened output to end of text file

echo -e "Enter the file name: \c"
read file_name

if [ -f $file_name ]
then
    if [ -w $file_name ]
    then 
        echo "Enter text. Press ctrl+d to quit."
        cat >> $file_name                 # > overwrite, >> append
    else
        echo "$file_name does not have write permission"
    fi
else
    echo "$file_name does not exist"
fi 