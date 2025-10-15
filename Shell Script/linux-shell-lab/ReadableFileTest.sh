#!/bin/bash
# test_readable.sh
# Usage: ./test_readable.sh <path>

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

path="$1"

if [ -r "$path" ]; then
  echo "$path is readable."
else
  echo "$path is NOT readable (or does not exist)."
fi
