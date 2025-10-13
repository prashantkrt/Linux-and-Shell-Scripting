#!/bin/bash

# Asking user for old and new filenames
echo "Enter the filename to rename:"
read oldname

echo "Enter the new filename:"
read newname

# Check if the old file exists
if [ -e "$oldname" ]; then  ## file doesnot support using (( ))
    mv "$oldname" "$newname"
    echo "File renamed successfully: '$oldname' → '$newname'"
else
    echo "Error: File '$oldname' does not exist!"
fi

