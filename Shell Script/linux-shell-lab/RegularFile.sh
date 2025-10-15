#!/bin/bash
# test_regular_file.sh
# Usage: ./test_regular_file.sh <path>

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

path="$1"

if [ -f "$path" ]; then
  echo "$path is a regular file."
else
  echo "$path is NOT a regular file."
fi
