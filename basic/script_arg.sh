#!/bin/bash

# this script returns the script name and arguments passed to it 

echo "The script name is '$0'" # the name of the script is at position 0 hence $0

# checks if there are arguments passed when running the script
if [[ $# != 0 ]]; then
    echo "The arguments are: "
    # looping through each arguments
    for arg in "$@"; do
        echo "$arg"
    done
fi

