#!/usr/bin/bash

#for running the shell script 
# bash <FILENAME>

#to take 1st argument from the command
user=$1
echo "Hello, $user"

# for dynamic number of aguments

user=$@
echo "HELLO, $user"
