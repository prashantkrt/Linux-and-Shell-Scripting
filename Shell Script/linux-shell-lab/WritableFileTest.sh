#!/bin/bash
# test_writable.sh
# Usage: ./test_writable.sh <path>

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

path="$1"

if [ -w "$path" ]; then
  echo "$path is writable."
else
  echo "$path is NOT writable (or does not exist)."
fi

#----------------------------------------------------
# code to check write access and then append the date to the file
if [ -w "$path" ]; then
  echo "Appending current date to $path"
  date >> $path 
  echo "Date appended."
else
  echo "Cannot append date. $path is not writable or does not exist."
fi

#----------------------------------------------------
# code to check write access and then overwrite the file with the date
if [ -w "$path" ]; then
  echo "Overwriting $path with current date"
  date > "$path"
  echo "File overwritten with date."
else    
    echo "Cannot overwrite. $path is not writable or does not exist."
fi
#----------------------------------------------------
# code to check write access and then create a new file with the date
if [ -w "$path" ]; then
  new_file="${path}_new"
  echo "Creating new file $new_file with current date"
  date > "$new_file"
  echo "New file created with date."
else
  echo "Cannot create new file. $path is not writable or does not exist."
fi