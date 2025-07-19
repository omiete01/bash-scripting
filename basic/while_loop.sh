#!/bin/bash

# this script prints a number from 1 to 10 using a while loop

i=1
while ((i < 11)); do
    echo $i 
    i=$((i + 1))
done
