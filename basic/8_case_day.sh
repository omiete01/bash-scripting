#!/bin/bash

# this script prints the name of day based on number

echo "What day of the week would you like to know? "
read day

echo -n "The name of the day is: "

case $day in
    "1")
    echo "Sunday"
    ;;

    "2")
    echo "Monday"
    ;;

    "3")
    echo "Tuesday"
    ;;

    "4")
    echo "Wednesday"
    ;;

    "5") 
    echo "Thursday"
    ;;

    "6")
    echo "Friday"
    ;;

    "7")
    echo "Saturday"
    ;;

    *)
    echo "Invalid"
    ;;
esac
