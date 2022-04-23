#! /usr/bin/bash

# file test operators

# \c keeps the curser on the same line, -e flag is required to interpret \c for this purpose, otherwise it will interpret it literally. in case of using escape seq, must use double quotes
echo -e "Enter the name of the file: \c"    
read file_name

# -e for checking if the file exists
if [ -e $file_name ]
then 
    echo file found
else
    echo file not found
fi

# -f for checking if the file exists and it's a regular file 
if [ -f $file_name ]
then 
    echo file found
else
    echo file not found
fi

# -d for checking directories
if [ -d $file_name ]
then 
    echo file found
else
    echo file not found
fi

# two types of files
#           - block special file      -b  ->  binary files. photos, vids etc. 
#           - charecter special file  -c  ->  text files



# -b for checking if block special
if [ -b $file_name ]
then 
    echo file found and block special
else
    echo file not found or not block special
fi

# -c for checking if charecter special
if [ -c $file_name ]
then 
    echo file found and charecter special
else
    echo file not found or not charecter special
fi

# -s for checking if file not empty
if [ -s $file_name ]
then 
    echo file not empty
else
    echo file empty
fi



