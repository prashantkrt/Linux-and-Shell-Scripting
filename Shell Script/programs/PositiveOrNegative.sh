#!/bin/bash

# This script checks if a given number is positive or negative
echo "Enter a number:"
read number
if [ $number -gt 0 ]; then
    echo "$number is positive."
elif [ $number -lt 0 ]; then
    echo "$number is negative."
else
    echo "$number is zero."
fi