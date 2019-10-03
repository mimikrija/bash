#!/bin/bash

# Remember when we looked at variables we discovered $RANDOM will return a random number. This number is between 0 and 32767 which is not always the most useful. 
# Let's write a script which will use this variable and some arithmetic (hint: play with modulus) to return a random number between 0 and 100.

random100=$(( RANDOM % 101 ))
echo Random number between 0 and 100 \(including\) is: $random100!

# Now let's play with the previous script. Modify it so that you can specify as a command line argument the upper limit of the random number.
# Can you make it so that a lower limit can be specified also? eg. if I ran ./random.sh 10 45 it would only return random numbers between 10 and 45.

customrandom=$(( $1 + RANDOM % ( $2 - $1 + 1)))
echo Random number between $1 and $2 \(including\) is $customrandom!
