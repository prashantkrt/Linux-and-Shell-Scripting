#!/bin/bash

# Display current date and time
echo "Current date and time: `date`" # old style


# Arithmetic operations using expr (old style)
# Note: Multiplication (*) must be escaped with a backslash (\) to avoid shell interpretation
expr 5 + 3
expr 10 \* 2
expr 15 / 3
expr 10 - 4
expr 10 % 3

a=12
b=4
echo "Addition: expr `$a + $b)`"
echo "Subtraction: `expr $a - $b)`"
echo "Multiplication: `expr $a \* $b`"
echo "Division: `expr $a / $b`"
echo "Modulus: `expr $a % $b`"
echo "Addition: `expr $a + $b`"
echo "Subtraction: `expr $a - $b`"
echo "Multiplication: `expr $a \* $b`"
echo "Division: `expr $a / $b`"
echo "Modulus: `expr $a % $b`"

# new style
echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"
echo "Division: $((a / b))"
echo "Modulus: $((a % b))"

a=5
b=10

echo "Equal: $(expr $a = $b)"
echo "Not Equal: $(expr $a != $b)"
echo "Greater: $(expr $a \> $b)"
echo "Less: $(expr $a \< $b)"

: <<'COMMENT'
This is a multi-line comment
It can span multiple lines

bc stands for Basic Calculator —
it’s a command-line calculator language used in Linux for doing advanced mathematical operations, including floating-point (decimal) calculations.

bc supports decimals, power, square roots, comparisons, and more.
COMMENT

echo "5 + 3" | bc

a=5
b=3
echo "scale=2; $(expr $a + $b) / 2" | bc # 4.00
echo "scale=2; $(expr $a - $b) / 2" | bc # 1.00
echo "scale=2; $(expr $a \* $b) / 2" | bc # 7.50
echo "scale=2; $(expr $a / $b) / 2" | bc # 0.83

# bc -l to enable the math library (for functions like sqrt,sin,cos,tan,etc.)
echo "scale=4; sqrt(25)" | bc -l # 5.0000


