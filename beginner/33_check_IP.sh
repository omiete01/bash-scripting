#!/bin/bash

# this script checks for the IP addresses in a log file and sends the result to another file

if [[ $# != 1 ]]; then
    echo "This script takes a logfile as an argument"
    exit 1
fi

if [[ -e $1 ]]; then

    # using grep and regular expression to match the IP address.
    grep -Eo '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' "$1" | sort -u  > ipaddress.txt
    # grep -Eo : searches for extended regex, o prints only the matched part
    # \b([0-9]{1,3}\.){3}[0-9]{1,3}\b : b for word boundary, ensures the IP is not part of other words, 
    # [0-9]{1,3}\.){3}[0-9]{1,3} : match 3 sets of 1 to 3 digits followed by a period

    echo "Successfully sent result to ipaddress.txt"
else
    echo "The file does not exist."
    exit 1
fi