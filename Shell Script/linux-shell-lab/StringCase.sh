#!/bin/bash

# case esac statement
# The ) marks the end of a pattern in a case statement.
# ;; means end of this case — stop checking others.
# ? any single special character
# * any string of characters like abc, 123, a1b2c3, etc. more than one character

echo -n "enter the character: "
read char
case $char in
  [a-z]) echo "lowercase letter" ;; 
  [A-Z]) echo "uppercase letter" ;;
  [0-9]) echo "digit" ;;
  ?) echo "special character" ;;
  *) echo "more than one character" ;;
esac