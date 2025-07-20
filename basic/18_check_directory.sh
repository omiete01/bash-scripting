#!/bin/bash

# this script creates a directory if it doesn't exist

# this script takes an argument as the name of the directory

# tells the user to input an argument when running the script
if [ $# != 1 ]; then
    echo "This script takes one argument"
    exit 1
fi

# checks if the directory exists
if [[ -d $1 ]];
then
    echo "The directory already exists"
else
    echo "Creating directory..."
    sleep 2
    
    # creates the directory. Suppresses the error if any with 2>/dev/null
    mkdir $1 2>/dev/null

    # checks if the directory was created succesfully by checking the exit code
    if [[ $? -eq 0 ]]; then
        echo "Directory '$1' created."
        exit 0  
    else
        echo "Could not create directory: '$1'"
        exit 1
    fi
fi
