#!/bin/bash
# Basic IF statement

if [ $1 -gt 100 ]
then
    echo Hey that\'s a large number!
    pwd
fi

if [ -e $2 ]
then
    nl $2
else
    echo 'No file provided in the argument list'
    nl /dev/stdin
fi

date