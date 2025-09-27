#!/bin/bash

# This program checks if a number is even or odd

echo "Enter a number: "
read number

: <<'COMMENT'
The logic:
1. We read input from user.
2. Use arithmetic expansion $((...)) to check modulo.
3. If remainder = 0 → even, else odd.
COMMENT

if (( number % 2 == 0 )); then
    echo "$number is EVEN"
else
    echo "$number is ODD"
fi

# Program ends here
