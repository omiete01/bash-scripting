#!/bin/bash

# this script recursively copies files to remote hosts

# the file to be copied. Can use path eg /path/to/file
read -p "What file would you like to copy? " copy_file

# the remote host and IP address eg user@10.10.10.10
read -p "Input the remote host to copy the file to: " remote_host

# the private key to access the remote host eg azure_key.pem. Can use path
read -p "Input path to the private key: " private_key

# checks if the private key and the file exists
if [ -e $copy_file ] && [ -e $private_key ]; then

    # securely copies the file to the users home directory
    scp -i $private_key $copy_file $remote_host:

    # checks if secure copy was successful
    if [ $? -eq 0 ]; then
        echo "Successfully copied file '$copy_file' to '$remote_host'"
        exit 0
    else
        echo "Something went wrong. Could not copy '$copy_file' to '$remote_host'"
        exit 1
    fi
    
else
    echo "'$copy_file' or '$private_key' does not exist in this directory"
    exit 1
fi
