#!/bin/bash
# test_all_file_checks.sh
# Usage: ./test_all_file_checks.sh <path>

: <<'COMMENT'
Shorthand: [ condition ] && command_if_true || command_if_false

if [ condition ]; then
  command_if_true
else
  command_if_false
fi

COMMENT

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

p="$1"

echo "Checking: $p"
[ -e "$p" ] && echo " - exists:        " || echo " - Does NOT exist:      "
[ -f "$p" ] && echo " - regular file:  " || echo " - Not a regular file:  "
[ -d "$p" ] && echo " - directory:     " || echo " - Not a directory:     "
[ -r "$p" ] && echo " - readable:      " || echo " - Not readable:        "
[ -w "$p" ] && echo " - writable:      " || echo " - Not writable:        "
[ -x "$p" ] && echo " - executable:    " || echo " - Not executable:      "


