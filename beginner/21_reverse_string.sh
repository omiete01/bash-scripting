#!/bin/bash

# this script reverses a string

# asks the user for input and stores it in the variable user_string
read -p "Enter a string: " user_string

# reverses the string using the 'rev' tool
reverse=$(echo $user_string | rev)

echo "Reversed string is: $reverse"
