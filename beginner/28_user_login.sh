#!/bin/bash

echo "this script list the users currently logged on to the system and sends the result to a text file"

echo

# sudo apt install finger
# finger > loggedin_users.txt

who > test.txt

echo "Successful. See result in test.txt"
