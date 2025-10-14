#!/bin/bash

# enter the filename to delete
echo "Enter the filename to delete:"
read filename
if [ -f "$filename" ]; then
    rm "$filename"
    echo "$filename has been deleted."
else
    echo "$filename does not exist."
fi