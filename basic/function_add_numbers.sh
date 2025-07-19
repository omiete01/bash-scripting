#!/bin/bash

# this script adds two numbers using functions

function add_numbers() {
    # this function takes arguments
    echo "$1 + $2 = $(($1+$2))"
}

result(){
    add_numbers 5 8
}

result
