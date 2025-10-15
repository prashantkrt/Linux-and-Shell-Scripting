#!/bin/bash
# test_executable.sh
# Usage: ./test_executable.sh <path>

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

path="$1"

if [ -x "$path" ]; then
  echo "$path is executable."
else
  echo "$path is NOT executable (or does not exist)."
fi

#--------------------------------------------------------------
# code to check if executable file and then execute it
if [ -x "$path" ]; then
  echo "Executing $path"
  "$path"
  echo "Execution completed."
else
  echo "Cannot execute. $path is not executable or does not exist."
fi
#--------------------------------------------------------------
# code to check if executable file and then display its type
if [ -x "$path" ]; then
  echo "Displaying type of $path"
  file "$path"
else
  echo "Cannot display type. $path is not executable or does not exist."
fi
#--------------------------------------------------------------
# code to check if executable file and then display its size
if [ -x "$path" ]; then
  echo "Displaying size of $path"
  ls -lh "$path"
else
  echo "Cannot display size. $path is not executable or does not exist."
fi
#--------------------------------------------------------------
# code to check if executable file and then display its permissions
if [ -x "$path" ]; then
  echo "Displaying permissions of $path"
  ls -l "$path"
else
  echo "Cannot display permissions. $path is not executable or does not exist."
fi
#--------------------------------------------------------------
# code to check if executable file and then display its last modification time
if [ -x "$path" ]; then
  echo "Displaying last modification time of $path"
  stat "$path" | grep "Modify"
else
  echo "Cannot display modification time. $path is not executable or does not exist."
fi
#--------------------------------------------------------------