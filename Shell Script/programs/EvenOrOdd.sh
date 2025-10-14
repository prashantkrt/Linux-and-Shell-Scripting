#!/bin/bash

# This script checks if a given number is even or odd
echo "Enter a number:"
read number
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi

if rm -f /tmp/evenOrOdd.log; then
    echo "Temporary log file removed successfully."
else
    echo "Failed to remove temporary log file."
fi