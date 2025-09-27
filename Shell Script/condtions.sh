# Conditions in Bash Scripting
-eq → equal
-ne → not equal
-gt → greater than
-lt → less than
-ge → greater or equal
-le → less or equal
# String comparison
== → equal
!= → not equal
-z str → string is empty
-n str → string is not empty
# Logical operators
&& → AND
|| → OR

-e file → exists
-f file → regular file
-d dir → directory
-r file → readable
-w file → writable
-x file → executable

if [[ condition ]]; then
   # do something
elif [[ another condition ]]; then
   # do something else
else
   # default action
fi

# Arithmetic evaluation using (( ))

-eq → equal using arithmetic evaluation
(( num1 == num2 )) 
-ne → not equal
(( num1 != num2 ))  
-gt → greater than
(( num1 > num2 ))  
-lt → less than
(( num1 < num2 ))  
-ge → greater or equal
(( num1 >= num2 )) 
-le → less or equal
(( num1 <= num2 ))
== → equal
(( num1 == num2 )) 
!= → not equal 
(( num1 != num2 ))  
-z str → string is empty
(( ${#str} == 0 ))   # ${#str} gives length of string
-n str → string is not empty
(( ${#str} != 0 ))  # ${#str} gives length of string
&& → AND
(( condition1 && condition2 ))  
|| → OR
(( condition1 || condition2 ))  

# file tests using arithmetic evaluation is not possible. Use [[ ... ]] for file tests.



# Arithmetic expansion
# $(( expression )) or $(())
# sum=$((num1 + num2))    # ✅ Correct
# sum=$(($num1 + $num2))  # ✅ Also correct
# sum=(($num1+$num2))   # ❌ Wrong

🔹 Rule of Thumb
Inside (( ... )) (arithmetic evaluation):
👉 You don’t need $ before variables.
Bash automatically treats names inside (( )) as variables.

Outside (( ... )):
👉 You must use $ to expand a variable (get its value).

------------------------------------------------
# Program 1
# compare two numbers
------------------------------------------------
#!/bin/bash

echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

if [[ $num1 -eq $num2 ]]; then
    echo "$num1 is EQUAL to $num2"

elif [[ $num1 -ne $num2 ]]; then
    echo "$num1 is NOT equal to $num2"

   if [[ $num1 -gt $num2 ]]; then
      echo "$num1 is GREATER than $num2"
   fi

   if [[ $num1 -lt $num2 ]]; then
      echo "$num1 is LESS than $num2"
   fi

   if [[ $num1 -ge $num2 ]]; then
      echo "$num1 is GREATER or EQUAL to $num2"
   fi

   if [[ $num1 -le $num2 ]]; then
      echo "$num1 is LESS or EQUAL to $num2"
   fi
fi

## same abouve using (( ))
------------------------------------------------
if (( num1 == num2 )); then
    echo "$num1 is EQUAL to $num2"
elif (( num1 != num2 )); then
    echo "$num1 is NOT equal to $num2"
   if (( num1 > num2 )); then
      echo "$num1 is GREATER than $num2"
   fi
    if (( num1 < num2 )); then
        echo "$num1 is LESS than $num2"
    fi
    if (( num1 >= num2 )); then
        echo "$num1 is GREATER or EQUAL to $num2"
    fi
    if (( num1 <= num2 )); then
        echo "$num1 is LESS or EQUAL to $num2"
    fi
fi
------------------------------------------------
# Program 2
# String comparison and logical operators
# Example: Check if a string is empty or not
------------------------------------------------
#!/bin/bash

echo "Enter a string: "
read str

# Check if string is empty
if [[ -z $str ]]; then
    echo "String is EMPTY (-z check)"
fi

# Check if string is not empty
if [[ -n $str ]]; then
    echo "String is NOT empty (-n check)"
fi
------------------------------------------------
# Same above using (( ))
# Check if string is not empty
if (( ${#str} != 0 )); then
    echo "String is NOT empty (arithmetic check)"
fi
if (( ${#str} != 0 )); then
    echo "String is NOT empty (arithmetic check)"
fi
--------------------------------------------------
# Program 3
# String equality and logical operators
# Example: Check if two strings are equal or not
--------------------------------------------------
#!/bin/bash

echo "Enter first string: "
read str1
echo "Enter second string: "
read str2   
if [[ $str1 == $str2 ]]; then
    echo "Strings are EQUAL (== check)"
fi
if [[ $str1 != $str2 ]]; then
    echo "Strings are NOT equal (!= check)"
fi

----------------------------------------------------  
# Program 4
# Logical AND (&&) and OR (||) operators
# Example: Using logical AND (&&) and OR (||) operators
----------------------------------------------------
#!/bin/bash

echo "Enter your age: "
read age

if [[ $age -ge 18 && $age -le 65 ]]; then
    echo "You are eligible to work."
else
    echo "You are not eligible to work."
fi

------------------------------------------------------
# Program 5
# File Test in Bash
-------------------------------------------------------
#!/bin/bash

echo "Enter a file or directory path: "
read path

if [[ -e $path ]]; then
    echo "$path exists"

    if [[ -f $path ]]; then
        echo "📄 It is a regular FILE"
    fi

    if [[ -d $path ]]; then
        echo "📂 It is a DIRECTORY"
    fi

    if [[ -r $path ]]; then
        echo "🔓 It is READABLE"
    else
        echo "Not readable"
    fi

    if [[ -w $path ]]; then
        echo " It is WRITABLE"
    else
        echo "Not writable"
    fi

    if [[ -x $path ]]; then
        echo "It is EXECUTABLE"
    else
        echo "Not executable"
    fi
else
    echo "$path does not exist"
fi

-------------------------------------------------------
# Program 6
# Arithmetic conditions using (( ))
# Example: Check if a number is even or odd
-------------------------------------------------------
#!/bin/bash

echo "Enter a number: "
read number
if (( number % 2 == 0 )); then
    echo "$number is EVEN"
else
    echo "$number is ODD"
fi
--------------------------------------------------------
# Program 7
# More arithmetic conditions using (( ))
# Example: Check if a year is a leap year
--------------------------------------------------------
#!/bin/bash

echo "Enter a year: "
read year
if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    echo "$year is a LEAP year"
else
    echo "$year is NOT a leap year"
fi
----------------------------------------------------------
# Program 8
# More arithmetic conditions using (( ))
# Example: Check if a number is positive, negative, or zero
----------------------------------------------------------
#!/bin/bash
echo "Enter a number: "
read number
if (( number > 0 )); then
    echo "$number is POSITIVE"
elif (( number < 0 )); then
    echo "$number is NEGATIVE"
else
    echo "$number is ZERO"
fi