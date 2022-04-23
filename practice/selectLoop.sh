#! /usr/bin/bash

# select varName in list
# do 
#     command1
#     command2
#     command3
# done

# select name in mark john tom ben 
# do 
#     echo "$name selected"
# done 

select name in mark john tom ben 
do 
    case $name in 
        mark )
            echo "Mark selected" ;;
        john )
            echo "john selected" ;;
        tom )
            echo "tom selected" ;;
        ben )
            echo "ben selected" ;;
        * )
            echo "Please select a number between 1..4" 
            break ;;
    esac
done 

for (( i=1; i<=10; i++ ))
do  
    if [ $i -eq 3 -o  $i -eq 6 ]
    then 
        continue
    fi 
    
    echo "$i"
    
    if [ $i -eq 8 ]
    then 
        break
    fi
done