#!/bin/bash

echo "This script reads a file line by line and prints each line to the terminal."
sleep 2

# exits the script if no argument was given when running the script
if [[ $# != 1 ]]; then
    echo "Please ensure to put one argument when running the script"
    sleep 1
    exit 1 
fi

while read -r line; do
    echo "$line"
    sleep 1
done <"$1"

