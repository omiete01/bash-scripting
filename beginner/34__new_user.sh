#!/bin/bash

# this script automates creating new user accounts on a linux server with appropriate permissions and SSH access

# this script takes a text file as an argument
if [[ $# != 1 ]]; then
    echo "This script takes an argument."
    exit 1
fi

if [[ -e $1 ]]; then
    echo "'$1' does not exist"
    exit 1
fi

users=$1

# while IFS= read -r user; do
for user in $(cat "$users"); do
    groupadd $user
    useradd -m -G $user $user
    passwd $user $user123
    user_home=/home/$user
    ssh_dir=/home/$user/.ssh
    auth_key=/home/$user/.ssh/authorized_keys
    
    mkdir $user_home
    chmod 700 $user_home
    chown $user:$user /home/$user

    mkdir $ssh_dir
    chmod 700 $ssh_dir
    mkdir $auth_key
    chmod 600 $auth_key

done
