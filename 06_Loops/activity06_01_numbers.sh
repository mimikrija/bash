#!/bin/bash
# Create a simple script which will print the numbers 1 - 10 (each on a separate line)
# and whether they are even or odd.


for value in {1..10}
do
    if [ $((value%2)) -eq 1 ]
    then
        oddness=odd
    else
        oddness=even
    fi
    echo $value is $oddness
done

echo All done