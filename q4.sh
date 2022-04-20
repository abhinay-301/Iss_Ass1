#!/bin/bash
echo enter ctrl+d when your array is completed
while read line
do
    my_array=("${my_array[@]}" $line)
done

let n=${#my_array[@]}
flag=1;
for (( i = 0; i < $n-1; i++ ))
do
    flag=0;
    for ((j = 0; j < $n-1-$i; j++ ))
    do
        if [ ${my_array[$j]} -gt ${my_array[$j+1]} ]
        then
            temp=${my_array[$j]};
            my_array[$j]=${my_array[$j+1]};
            my_array[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done
echo "final array is: ${my_array[*]}";