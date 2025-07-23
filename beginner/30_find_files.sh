#!/bin/bash

# this script finds files created within a given date range along with their sizes

read -p "Enter directory to find files /path/to/dir: " directory

read -p "Start date YYYY-MM-DD: " start_date

read -p "End date YYYY-MM-DD: " end_date

echo

if [ -d $directory ]; then
    find $directory -type f -newermt $start_date ! -newermt $end_date -exec du -h {} + > filter_files.txt
    echo "Succesfully sent result to filter_files.txt"
    exit 0
else
    echo "$directory is not a a directory."
    exit 1
fi

# find $directory -type f -newermt $start_date ! -newermt $end_date -exec du -h {} + > filter_files.txt
# -newermt $start_date ! -newermt $end_date : find between startdate and enddate
# -exec du -h {} +  : execute du -h command on find result
# > filter_files.txt : send output to filter_files.txt. overwrites any info already there

