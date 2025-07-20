#!/bin/bash

# this script finds and kills all zombie processes

# find the zombie process
# ps -eAo state,pid,comm | grep -w Z
# readarray -t zombie_process <<< "$(ps -eAo state,pid,comm | grep -w Z)"
zombie_process=( $(ps -eAo state,pid,comm | grep -w Z))
# echo ${zombie_process[@]}
kill -9 | grep "PID"

# for zombie in ${zombie_process[@]}; do
#     echo "${zombie[0]}"
# done

# while IFS= read -r line; do
#     my_array+=("$line")
# done < <(ps -eAo state,pid,comm | grep -w Z)
