#!/bin/bash

# this script merges two files and sends the output to a 3rd file.

# this script will take 3 arguments

if [[ $# != 3 ]]; then
    echo "this script takes 3 arguments as files"
    exit 1
fi

if [[ -e $1 ]] && [[ -e $2 ]]; then
    
    # creating the file if it does not exist
    touch $3

    # sending the merged file to the just created file. The '>>' adds to the file while '>' overwrites the file
    cat $1 $2 >> $3

    echo "Successfully merged files from '$1' and '$2' to '$3'"

else
    echo "the file does not exist"
    exit 1
fi
