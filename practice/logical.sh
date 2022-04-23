#! /usr/bin/bash


#   AND  --------------------------------------------------------------------
age=35

if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then 
    echo "valid age"
else    
    echo "invalid age"
fi

age=25

if [ "$age" -gt 18 -a "$age" -lt 30 ]   # -a and flag 
then 
    echo "valid age"
else    
    echo "invalid age"
fi

age=50

if [[ "$age" -gt 18 && "$age" -lt 30 ]]   # in this case must use double [[]] 
then 
    echo "valid age"
else    
    echo "invalid age"
fi

#   OR  --------------------------------------------------------------------

age=35

if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
then 
    echo "valid age"
else    
    echo "invalid age"
fi

age=25

if [ "$age" -gt 18 -o "$age" -lt 30 ]   # -o or flag 
then 
    echo "valid age"
else    
    echo "invalid age"
fi

age=50

if [[ "$age" -gt 18 || "$age" -lt 30 ]]   # in this case must use double [[]] 
then 
    echo "valid age"
else    
    echo "invalid age"
fi