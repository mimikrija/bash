#!/bin/bash
wordlist=/usr/share/dict/words 
if [ $# -gt 0 ]
then
   echo looking only for words of length = $1

   egrep -v ^.{$(($1+2))} $wordlist >> subtempwords
   egrep -w ^.{$(($1))} subtempwords >> tempwords
   wordlist=./tempwords
else
   echo looking for a random word
fi
nofwords=`cat $wordlist | wc -l` 
echo There are $nofwords words in $wordlist
echo Suspense is getting unbearable...
sleep 2
linepos=$(($RANDOM%($nofwords+1))) #random is limited 
randomword=`head -$linepos $wordlist | tail -1`
echo Random word \(word no. $linepos \)  is: $randomword !
sleep 1
echo K, bye now!
if [ ./tempwords ]
then
   #echo these are tempwords
   #tail ./tempwords
   #sleep 1
   #echo these are subtempwords
  
   #tail ./subtempwords
   #sleep 1
   rm ./tempwords
   rm ./subtempwords
fi
exit
