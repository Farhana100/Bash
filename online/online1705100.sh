#! /usr/bin/bash

[[ $# -eq 0 ]] && exit


count=()
deg=()
inst=()
inputFile=$1
outputFile=output.csv
i=0
while read line || [ -n "$line" ]
do 
    line=$(echo $line | tr -d '\r')
    line=$(echo $line | tr -d '\n')
    if [[ $i -ne 0 ]]
    then 
        IFS=','
        temp=($line)
        unset IFS

        if [[ count[${temp[0]}] -eq 0 ]]
        then
            deg[${temp[0]}]=${temp[1]}
            inst[${temp[0]}]=${temp[2]}
        else
            deg[${temp[0]}]=${deg[${temp[0]}]},${temp[1]}
            inst[${temp[0]}]=${inst[${temp[0]}]},${temp[2]}
        fi

        (( count[${temp[0]}] = count[${temp[0]}] + 1 ))
    fi
    (( i = i + 1 ))
done < $inputFile

if [ -e $outputFile ]
then 
    rm $outputFile
fi

touch $outputFile
echo "Student ID", "Total no of degrees", "Degree", "Institute" >> $outputFile

for item in ${!count[@]}
do 
    echo $item ${count[$item]} ${deg[$item]} ${inst[$item]}

    IFS=','
    tempdeg=(${deg[$item]})
    unset IFS

    IFS=','
    tempinst=(${inst[$item]})
    unset IFS

    for (( i=0; i<${count[$item]}; i++ ))
    do
        if [[ $i -eq 0 ]]
        then
            echo $item, ${count[$item]}, ${tempdeg[$i]}, ${tempinst[$i]} >> $outputFile
        else
            echo " ", " ", ${tempdeg[$i]}, ${tempinst[$i]} >> $outputFile
        fi
    done
done


echo 
echo 
echo -------------------------

echo ${!count[@]}
echo ${count[@]}
echo
echo ${!deg[@]}
echo ${deg[@]}
echo
echo ${!inst[@]}
echo ${inst[@]}

