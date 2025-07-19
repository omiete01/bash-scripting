#!/bin/bash

# this script finds and kills all zombie processes

# find the zombie process
ps -eAo state,pid,comm | grep -w Z
