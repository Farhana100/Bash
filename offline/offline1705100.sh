#! /usr/bin/bash

inputFileName=""
workingdirectory=""
outputdirectory="output_dir"

if [ $# -eq 1 ]
then 
    inputFileName=$1
    workingdirectory=.
elif [ $# -eq 2 ]
then
    inputFileName=$2
    workingdirectory=$1
fi 

if [ -f $inputFileName ]
then
    echo 
else
    echo " invalid command "
    echo "[ working directory ] [ input file name ]"
    exit
fi

echo $inputFileName $workingdirectory


if [ -e $outputdirectory ]
then
    echo
else
    mkdir output_dir
fi

#--------------------------------reading from input file-----------------------------------------------------
ignore=()
while read line || [ -n "$line" ]
do 
    line=$(echo $line | tr -d '\r')
    line=$(echo $line | tr -d '\n')
    ignore+=("$line")
done < $inputFileName
#-----------------------------------------------------------------------------------------------------------

#------------------------------------processing command-------------------------------------------------------
str="find $workingdirectory -type f "
ignoredstr="find $workingdirectory -type f "
(( temp = ${#ignore[@]} - 1 ))

for (( i=0; i<${#ignore[@]}; i++ ))
do 
    if [ $i -ne $temp ]
    then
        str+=" -not -name '*.${ignore[$i]}' -a"
        ignoredstr+=" -name '*.${ignore[$i]}' -o"

    else
        str+=" -not -name '*.${ignore[$i]}'"
        ignoredstr+=" -name '*.${ignore[$i]}'"
    fi
done
#-----------------------------------------------------------------------------------------------------------

#-----------------------------------finding all required files--------------------------------------------------
allfiles=$(eval $str)
#---------------------------------------------------------------------------------------------------------------


#-----------------------------------finding all required files--------------------------------------------------
declare -A count
subdir=""
for item in ${allfiles[@]}
do 
    ext=$(echo $item | sed 's/.*\.//')
    
    #----------------------------------creating directory-----------------------------------------------------
    if [[ $item == *'.'* ]]
    then
        subdir=$ext 
    else    
        subdir=others
    fi

    if [ -e $outputdirectory/$subdir ]
    then
        temp=0
    else
        count[$subdir]=0
        mkdir $outputdirectory/$subdir
    fi
    #-------------------------------------------------------------------------------------------------------

    #-------------------------------------------copying file------------------------------------------------
    cp $item $outputdirectory/$subdir
    #-------------------------------------------------------------------------------------------------------

    #-----------------------------------------------------log----------------------------------------------
    printf $item'\n' >> $outputdirectory/$subdir/$subdir.txt
    #-------------------------------------------------------------------------------------------------------
    (( count[$subdir] = count[$subdir] + 1 ))

    echo $item
done
#---------------------------------------------------------------------------------------------------------------


#----------------------------------------count ignored files---------------------------------------------------
ignoredfiles=$(eval $ignoredstr)
count["ignored"]=0
for item in $ignoredfiles
do
    (( count["ignored"] = count["ignored"] + 1 ))
done
#-------------------------------------------------------------------------------------------------------------

#-------------------------------------------creating csv--------------------------------------------------------

touch output.csv
echo "file type", "number of files" >> output.csv
temp=0
for item in ${!count[@]}
do
    (( temp = temp + ${count[$item]} ))
    echo $item, ${count[$item]} >> output.csv
done

#---------------------------------------------------------------------------------------------------------------
