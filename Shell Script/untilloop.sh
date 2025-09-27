# opposite of while loop
#!/bin/bash

count=1
until [[ $count -gt 5 ]] # till the condtion is not met the loop will run
do
    echo "Count is $count"
    ((count++))
done
---------------------------------
output:
Count is 1
Count is 2  
Count is 3
Count is 4
Count is 5

# but same output can be achieved using while loop also
#!/bin/bash
count=1
while [[ $count -le 5 ]]  # till the condtion is met the loop will run
do
    echo "Count is $count"
    ((count++))
done
---------------------------------
output:
Count is 1
Count is 2
Count is 3
Count is 4
Count is 5