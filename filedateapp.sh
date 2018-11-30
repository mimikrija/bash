#!/bin/bash
echo This one takes a file as an argument and prepends the date.
echo Not checking for correct number of arguments
sleep 2
date=` date +%F `
filename=$1
extension=.` echo $filename |cut -f 2 -d '.' ` # use . as the delimiter, get second "collon"
#this works only for filenames without any additional dots :/
echo Date is $date
echo Full filename is: $filename
echo Extension is: $extension
datedfilename=`  basename $filename $extension `_$date$extension
echo Dated filename is: $datedfilename
if [ -e $filename ]
then
   cp -T $filename $datedfilename
   sleep 1
   echo listing files with numerical values
   sleep 1
   ls [0-9]*
else
   echo file $filename does not exist
fi

exit
