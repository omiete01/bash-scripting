#!/bin/bash

# this script takes multiple arguments from the command line and prints them onto the screen

if [ $# -eq 0 ]; then
    echo "this script takes arguments"
fi

echo "$@"

# $# - number of arguments
# $* - all positional arguments as a single word
# $@ - all positional arguments as seperate strings

