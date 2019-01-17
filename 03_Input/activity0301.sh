#!/bin/bash
# Create a simple script which will ask the user for a few pieces of information then combine this into a message which is echo'd to the screen.

echo What is your name?
read Name
read -p 'Please input your age here: ' age #note, variables don't work in this printout
echo So your name is $Name and you are $age years old.

#Add to the previous script to add in some data coming from command line arguments and maybe some of the other system variables.

echo First command-line argument is: $1
echo And this is the \$Path variable: $PATH
