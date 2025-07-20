#!/bin/bash

# this script gracefully unmounts a disk

# lists all the mounted disks
df -h 

echo 

# asks the user for the mount point and saves the value in the disk variable
read -p "Type mount point you wish to unmount. Example '/dev/sda': "  disk
sleep 1

echo "You want to unmount '$disk'"
sleep 1

# check if disk is mounted
if mountpoint -q $disk; then
    echo "Unmounting $disk"

    # unmount disk using sudo privileges
    sudo umount $disk
    sleep 1

    #check if unmounting disk was succesful
    if [[ $? -eq 0 ]]; then
        echo "Succesfully unmounted disk: $disk"
        exit 0
    else
        echo "Could not unmount disk: $disk"
        exit 1
    fi

else
    echo "'$disk' is not mounted"
fi
