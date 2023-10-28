#!/bin/bash
read -p "Enter the starting random number: " -r start
read -p "Enter the ending random number  : " -r end
echo -n >'random gen.txt' #clearing the file
#getting the unsorted array
for((i=start; i<=end; i++)){
    result=$((end-start+1))
    result=$((RANDOM%result))
    result=$((result+start))
    echo $result>>'random gen.txt'
}
