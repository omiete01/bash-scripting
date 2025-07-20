#!/bin/bash

# this script will find the first 10 biggest files on the system and send the output to another file

# du -h ~/ | sort -h | tail -n 10 > biggest_file.txt

find ~/ -type f -exec du -h {} + | sort -h | tail -n 10 > biggest_file.txt
# find ~/ -type -f command finds all files in the home directory and subdirectories
# -exec du -h - display files in human readable format
# sort -h - sorts the files 
# tail -n 10 - displays the 10 largest file
# > biggest_file.txt - sends the result to biggest_file.txt overwriting contents there if any

# returns message based on exit code of the above command
if [ $? -eq 0 ]; then
    echo "Succesful"
else
    echo "Unsuccessful"
fi
