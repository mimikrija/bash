#!/bin/bash

# Create a simple script which will take two command line arguments and then multiply them together using each of the methods detailed above.

# method 1

let a=$1*$2
echo Method 1 \(let\): $1 multiplied by $2 is $a

# method 2

b=$( expr $1 \* $2 ) # in this case we need to escape the special character
echo Method 2 \(expression\): $1 multiplied by $2 is $b

# method 3

c=$(( $1 * $2 ))
echo Method 3 \(double parentheses\): $1 multiplied by $2 is $c
