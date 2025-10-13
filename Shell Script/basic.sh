#!/bin/bash

# This is a basic shell script

echo "Hello, World!"

# Display current date and time
echo "Current date and time: $(date)"

# List files in the current directory
echo "Files in current directory:"
ls

echo -n "Enter a number: "
read number

echo -n "Enter another number: " 

sum=$((number + another_number))
echo "The sum of $number and $another_number is: $sum"

# End of script