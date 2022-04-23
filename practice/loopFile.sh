#! /usr/bin/bash

# read file with while loop
# reads itself

# method 1
while read p
do 
    echo $p
done < loopFile.sh


# method 2
cat loopFile.sh | while read p
do  
    echo $p
done

# method 3
while IFS= read -r line
do 
    echo $line
done <loopFile.sh
