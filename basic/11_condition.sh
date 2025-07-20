#!/bin/bash

#this script demonstrates the use of the && (and) and || (or) operators to perform conditional commands

num1=4
num2=8

if [ $num1 -le $num2 ] && [ $num2 -le 10 ]; then
    echo "$num2 is less than 10"
else
    echo "$num2 is invalid"
fi

if [ $num1 -ge $num2 ] || [ $num1 -ge 0 ]; then
    echo "$num1 is greater than 0"
else
    echo "$num1 is invalid"
fi
