#!/bin/bash

echo "this script loops through an array and prints each element"
sleep 1

echo 

array=('a' 'b' '5' '8' 'hi' '39' 'love')

for item in ${array[@]}; do
    echo $item
    sleep 1
done
