#!/bin/bash

# String comparison operators
# Operator    | Meaning                          | Example                | True When
# ------------|----------------------------------|------------------------|-------------------------
# -z str      | String is empty                  | [ -z "$a" ]            | $a is ""
# -n str      | String is not empty              | [ -n "$a" ]            | $a is not ""
# str1 = str2 | Strings are equal                | [ "$a" = "$b" ]        | $a and $b are the same
# str1 != str2| Strings are not equal            | [ "$a" != "$b" ]       | $a and $b are different
# str1 < str2 | Comes before (lexicographically) | [[ "$a" < "$b" ]]      | $a comes before $b
# str1 > str2 | Comes after (lexicographically)  | [[ "$a" > "$b" ]]      | $a comes after $b


echo -n "Enter a string: "
read str

if [[ -z "$str" ]]; then
  echo " String is empty"
elif [[ -n "$str" && "$str" = "hello" ]]; then
  echo "String is hello"
elif [[ -n "$str" && "$str" = "world" ]]; then
  echo "String is world"
elif [[ "$str" < "m" ]]; then
  echo "String comes alphabetically before 'm'"
else
  echo "String comes after 'm'"
fi


# ------------------------------------------------
# with ((...)) for arithmetic comparison with same above program

#!/bin/bash 
echo -n "Enter a string: "
read str
if (( ${#str} == 0 )); then
  echo " String is empty"
elif (( ${#str} != 0 && str == "hello" )); then
  echo "String is hello"
elif (( ${#str} != 0 && str == "world" )); then
  echo "String is world"
elif [[ "$str" < "m" ]]; then
  echo "String comes alphabetically before 'm'"
else
  echo "String comes after 'm'"
fi


# ------------------------------------------------


