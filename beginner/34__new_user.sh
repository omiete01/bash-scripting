#!/bin/bash

# this script automates creating new user accounts on a linux server with appropriate permissions and SSH access

# this script takes a text file as an argument
if [[ $# != 1 ]]; then
    echo "This script takes an argument."
    exit 1
fi

users=$1

# looping through each name in the text file
for user in $(cat "$users"); do

    # creates a group for the user
    groupadd $user

    # creates the user account and adds it to their group
    useradd -m -g $user $user

    ssh_dir=/home/$user/.ssh
    auth_key=/home/$user/.ssh/authorized_keys

    # create an ssh directory for the user with permissions
    mkdir $ssh_dir
    chmod 700 $ssh_dir

    # creates authorized_keys file for user with permissions
    touch $auth_key
    chmod 600 $auth_key

    # giving user full ownership of their home directory
    chown -R $user:$user /home/$user
    
done
