#!/bin/bash
# Simple addition script

echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

sum=$((num1 + num2))
echo "Sum = $sum"

# Arithmetic expansion
#$(( expression )) or $(())
# sum1=$((num1 + num2))    # ✅ Correct
# sum2=$(($num1 + $num2))  # ✅ Also correct
# sum=(($num1+$num2))   # ❌ Wrong


# Note :
# $sum=$((x + y))   # ❌ ERROR
# why : 
# Bash would think $sum means “the value stored in sum”, which makes no sense as a variable name to assign into.
# So assignment must always be:
# varname=value   # no $ on left side
