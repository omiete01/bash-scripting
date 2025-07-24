#!/bin/bash

# this script parses a log file in the desired format and finds all occurences of a specific word

# this script will take an argument

if [ $# != 1 ]; then
    echo "this script takes 1 argument."
    exit 1
fi

# checks if logfile exists
if [[ -e $1 ]]; then 

    # checks if the file ends in log
    if [[ $1 == *"log" ]]; then

        # asks user what word they would like to filter from the logfile
        read -p "Word to filter in the logfile: " word

        # checks for pattern matches against the word
        grep "$word" $1 > logfile.log

        echo
        echo "Sent filtered searches to logfile.log"
        echo 
        exit 0
    else
        echo "not a log file"
        exit 1
    fi
else
    echo "logfile does not exist"
    exit 1
fi
