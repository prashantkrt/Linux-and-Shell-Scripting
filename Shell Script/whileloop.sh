: <<'Syntax'
while condition
do
    commands
done
Syntax

# Example
#!/bin/bash


# Using -le
count=1
while [[ $count -le 5 ]]
do
    echo "Test style: $count"
    (( count++ ))
done
---------------------------------
# Using arithmetic evaluation ((( )))
# Using <=
count=1
while (( count <= 5 ))
do
    echo "Arithmetic style: $count"
    (( count++ ))
done
--------------------------------


