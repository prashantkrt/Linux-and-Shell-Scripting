: <<'Syntax'
for var in list
do
    commands
done
Syntax

# Simple for loop example
----------------------------------
#!/bin/bash

for i in 1 2 3 4 5
do
    echo "Number: $i"
done
----------------------------------
# range {start..end}
#!/bin/bash
for i in {1..5}
do
    echo "Count: $i"
done
----------------------------------
# Step of 2
#!/bin/bash
for i in {1..10..2}
do
    echo "Step: $i"
done
----------------------------------
# Using C-style for loop
#!/bin/bash
for (( i=1; i<=5; i++ ))
do
    echo "C-style Count: $i"
done
----------------------------------
# Looping through a list of items
#!/bin/bash
for fruit in Apple Banana Cherry
do
    echo "Fruit: $fruit"
done
----------------------------------
# Looping through command line arguments
#!/bin/bash
for arg in "$@"
do
    echo "Argument: $arg"
done

# $@ = all arguments passed to the script.
# "$@" = expands each argument as a separate quoted string (important if arguments contain spaces).

# when we do 
# ./myscript.sh apple "red fruit" orange
# Argument: apple
# Argument: red fruit
# Argument: orange  

# "$@" = apple "red fruit" orange
----------------------------------
# Looping through files in a directory
#!/bin/bash
for file in /path/to/directory/*
do
    echo "File: $file"
done
----------------------------------
# Nested for loops
#!/bin/bash
for i in 1 2 3
do
    for j in a b c
    do
        echo "Pair: $i$j"
    done
done
----------------------------------
# Using break and continue
#!/bin/bash
for i in {1..10}
do
    if (( i == 5 )); then
        echo "Skipping 5"
        continue
    fi
    if (( i == 8 )); then
        echo "Breaking at 8"
        break
    fi
    echo "Number: $i"
done
----------------------------------