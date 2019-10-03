#!/bin/bash
# Create a Bash script which will take 2 numbers as command line arguments. It will print to the screen the larger of the two numbers.

# how do I check for validity of provided command-line arguments?

echo 'First number: ' $1
echo 'Second number:' $2

#if [ $1 ] && [ $2 ] && 
if [ $1 -eq $1 ] && [ $2 -eq $2 ]
then
    echo input oook!
fi

if [ $1 -gt $2 ]
then
    echo $1
elif [ $2 -gt $1 ]
then
    echo $2
else
    echo 'they are equal'
fi