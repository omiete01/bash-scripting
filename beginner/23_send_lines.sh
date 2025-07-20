#!/bin/bash

# this script sends the first ten lines of a file to another file 

# this script takes 2 arguments; the first argument is the file the lines will be taken from
# and the second argument is the file the lines will be sent to

# checks if the number of arguments equals 2
if [[ $# != 2 ]]; then
    echo "This script takes 2 arguments"
    exit 1
fi

# -e $1 checks if the file used as argument exists
if [[ -e $1 ]] && [[ -e $2 ]]; then
    # looping through the lines in the file
    for line in $1; do
        # sends the first 10 lines to the file used as the second argument using redirection '>>'
        head $1 >> $2
        echo "Successfully sent the first 10 lines from '$1' to '$2'"
    done
else
    # if any of the file does not exist, sends a message and exits as failure
    echo "the file does not exist"
    exit 1
fi

