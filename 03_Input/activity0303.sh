#!/bin/bash

# Now play about with creating a script which will behave as a filter. Create a script which will rearrange the output of the command ls -l in a useful way (eg maybe you only print the filename, size and owner) (Hint: awk can be useful here).

# so this is called with one command-line argument which is the path

echo Here is a nice output of files in this directoryi and their owners :

nol=`ls -l $1 | wc -l`   # you must put these spaces before parentheses!
nol=$(( $nol-1 ))
ls -l $1 | tail -n $nol | awk '{print "file " $9 ". owner: " $3}'
