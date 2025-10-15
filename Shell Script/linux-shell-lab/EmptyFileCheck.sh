#!/bin/bash

# check if the file is empty or not

if [ $# -ne 1 ]; then
  echo "Usage: $0 <file_path>"
  exit 1
fi
file_path="$1"
if [ -e "$file_path" ]; then
  if [ -s "$file_path" ]; then
    echo "$file_path is not empty."
  else
    echo "$file_path is empty."
  fi
else
  echo "$file_path does not exist."
fi

#----------------------------------------------------------------
# Approach 2 - Using double parentheses for arithmetic evaluation
#!/bin/bash
if(( $# != 1 )); then
  echo "Usage: $0 with argument $1"
  exit 1
fi
file_path="$1"
if [[ -e "$file_path" ]]; then
  if [[ -s "$file_path" ]]; then
    echo "$file_path is not empty."
  else
    echo "$file_path is empty."
  fi
else
  echo "$file_path does not exist."
fi