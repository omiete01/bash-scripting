#!/bin/bash

# this script reverses a string

read -p "Enter a string: " user_string
reverse=$(echo $user_string | rev)
echo "Reversed string is: $reverse"
