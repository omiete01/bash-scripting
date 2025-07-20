#!/bin/bash

# this script demonstrates the use of read with a default value if the user did not input anything

# read -p "Where is your location? " -i "Lagos" -e location
# echo "Your location is $location"

# -p - specifies a prompt, -i - editable default value, -e - sets the value to the variable

read -p "Where is your location? " location
location=${location:-Lagos}  # assigns the value Lagos to location variable if no entry was given
echo "Your location is $location"
