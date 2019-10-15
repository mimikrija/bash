#!/bin/bash
# Create a Bash script which will take 2 numbers as command line arguments. It will print to the screen the larger of the two numbers.

# how do I check for validity of provided command-line arguments?

echo 'First number: ' $1
echo 'Second number:' $2

#if [ $1 ] && [ $2 ] &&
if [ $1 -eq $1 ] && [ $2 -eq $2 ]
then
    echo input is ok, proceeding with comparison of $1 and $2:
    if [ $1 -gt $2 ]
    then
        echo $1 ' > ' $2
    elif [ $2 -gt $1 ]
    then
        echo $1 ' < ' $2
    else
        echo $1 ' = ' $2
    fi
else
    echo please input two integers.
fi # end of the input check
