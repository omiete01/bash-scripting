#!/bin/bash

# this script parses specific values of a log file with timestamps to an output file

read -p "Enter directory of the log file: " logdir

echo

ls $logdir

echo

read -p "Enter filename to access: " logfile

echo

read -p "What information would you like to filter? " filter

echo

dir_file=$logdir/$logfile

if [ -e $dir_file ]; then
    cat $dir_file | grep "$filter" > logfile.txt

    if [ $? -eq 0 ]; then
        echo "Succesfully sent to logfile.txt"
        echo
        exit 0
    else
        echo "Could not find file."
        exit 1
    fi
else
    echo "'$dir_file' does not exist in this directory"
    echo
    exit 1
fi
