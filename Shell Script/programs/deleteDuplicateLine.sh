#!/bin/bash

echo "Enter the filename to delete duplicate lines:"
read filename

if [ -e "$filename" ]; then
    sort -u "$filename" -o "$filename". # sort and remove duplicates, save to same file.
    echo "Duplicate lines deleted successfully from '$filename'."
else
    echo "Error: File '$filename' does not exist!"
fi

## using uniq command
# uniq command removes duplicate lines from a sorted file.
# To use uniq, the file must be sorted first.

#!/bin/bash

echo "Enter the filename to delete duplicate lines:"
read filename

if [ -e "$filename" ]; then
    uniq "$filename" > temp.txt. # Remove adjacent duplicate lines and write to a temporary file better to use sort -u
    mv temp.txt "$filename"
    echo "Duplicate lines deleted successfully from '$filename'."
else
    echo "Error: File '$filename' does not exist!"
fi

# Command summary:
# uniq "$filename"        - Removes adjacent duplicate lines
# > temp.txt              - Writes the output (unique lines) into a temporary file
# mv temp.txt "$filename" - Replaces the original file with the cleaned version



