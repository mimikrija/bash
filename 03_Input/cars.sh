#!/bin/bash
# Demonstrate how read works for multiple variables.

echo What cars do you like?

read car1 car2 car3

echo Your first car was: $car1,
echo Your second car was: $car2,
echo Your third car was: $car3\.

#The general mechanism is that you can supply several variable names to read. Read will then take your input and split it on whitespace. The first item will then be assigned to the first variable name, the second item to the second variable name and so on. If there are more items than variable names then the remaining items will all be added to the last variable name. If there are less items than variable names then the remaining variable names will be set to blank or null.
