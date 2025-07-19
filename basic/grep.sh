#!/bin/bash

# this script takes one argument

echo "This script uses grep to search for a word in a text file and prints matching lines"
sleep 1

echo ""

cat $1 | grep "grep"
