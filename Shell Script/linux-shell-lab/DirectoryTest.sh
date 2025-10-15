#!/bin/bash
# test_directory.sh
# Usage: ./test_directory.sh <path>

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

path="$1"

if [ -d "$path" ]; then
  echo "$path is a directory."
else
  echo "$path is NOT a directory."
fi
