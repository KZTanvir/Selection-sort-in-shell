#!/bin/bash

#declaring an array and size variable i
dataPline=()
i=0
#getting input from file
while read -r data
do
    #adding the input to the array
    dataPline+=("$data")
    #incrementing the size variable
    i=$((i+1))
done < 'random gen.txt'

#creating selection sort
#selection sort is a sorting algorithm that sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.
ARRAYSIZE=$i
for ((j=0; j<ARRAYSIZE-1; j++)){
    min=$j
    for ((k=j+1; k<ARRAYSIZE; k++)){
        if [[ ${dataPline[k]} -le ${dataPline[min]} ]]
        then
            min=$k #selection as key for minimum in the sub array
        fi
        #can also be written as if arr min is not equal to j
        temp=${dataPline[j]}
        dataPline[j]=${dataPline[min]}
        dataPline[min]=$temp
    }
}
echo "${dataPline[@]}">>'result.txt'

echo "The sorted array is:"
echo "${dataPline[@]}"
#this is the output