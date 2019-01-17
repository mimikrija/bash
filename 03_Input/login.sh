#!/bin/bash
#Ask a user for login details. -s means "silent", -p means "prompt"

read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo #this echo is needed to go into the next line.
echo Thank you $uservar for entering your password which is $passvar\. Haha!
