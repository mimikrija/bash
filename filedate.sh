#!/bin/bash
echo This one takes a file as an argument and prepends the date.
echo Not checking for correct number of arguments
sleep 2
date=` date +%F `
filename=$1
echo Date is $date
echo Filename is: $filename
echo Dated filename is: $date$filename
if [ -e $filename ]
then
   cp -T $filename $date$filename
   sleep 1
   echo listing files with numerical values
   sleep 1
   ls [0-9]*
else
   echo file $filename does not exist
fi

exit
