#!/bin/bash

# swap two numbers using a temporary variable
echo "Enter first number: "
read a
echo "Enter second number: "
read b
temp=$a
a=$b
b=$temp
echo "After swapping: a = $a, b = $b"