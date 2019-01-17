#!/bin/bash

# Create a script which will take data from STDIN and print the 3rd line only.

echo here is the third line of the piped in data:

cat /dev/stdin | head --lines 3 | tail --lines 1
