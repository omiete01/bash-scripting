#!/bin/bash

# this script takes two numbers and sums them

echo "This script adds two numbers."

echo "Enter your first number: "
read num1

echo "Enter your second number: "
read num2

sum=$(($num1 + $num2))

echo "$num1 + $num2 = $sum"
