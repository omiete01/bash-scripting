#!/bin/bash

# this script checks if numbers are even or odd

function check_even_odd() {
    if [[ $1%2 -eq 0 ]]; then
        echo "$1 is an even number"
    else
        echo "$1 is an odd number"
    fi
}

check_even_odd 123
