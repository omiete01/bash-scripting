#!/bin/bash

# this script finds all duplicate strings in a file and replaces it with another string

read -p "File: " user_file
echo

# checks if file exists
if [ -f $user_file ]; then
    echo "Duplicates found in '$user_file': "

    # sorts the duplicates from the file and prints to the terminal
    sort $user_file | uniq -d
    echo

    read -p "Word to replace: " old_word
    read -p "New word: " new_word

    # replaces the old word with the new word and saves the result to replaced.txt file
    sed "s/\b$old_word\b/$new_word/g" "$user_file" > replaced.txt
    echo

    echo "Success"
    echo
else
    echo "File does not exist."
    exit 1
fi
