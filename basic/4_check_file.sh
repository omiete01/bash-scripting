#!/bin/bash

# this script checks if a file exists

# checks if the user puts one argument when running the script. $# - number of arguments
if [[ $# != 1 ]]; then
    echo "Please ensure to put one argument when running the script"
    exit
fi

echo "Checking if file '$1' exists...."
sleep 2

# finds the file in the argument passed
find . -iname "$1"

# checks if the exit code returns 0 (0 means success and 1 means failure)
if [[ -n "$(find . -iname "$1" -print -quit 2>/dev/null)" ]]; then
# if [ $? -eq 0 ]; then
    echo "File '$1' found!"
    exit 0
else 
    echo "File '$1' not found" >&2
    exit 1
fi 
