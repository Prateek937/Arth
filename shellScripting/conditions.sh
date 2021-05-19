#!/usr/bin/bash

user=$(car db.csv)

for  j in $user
do 
	if useradd $j
	then
		echo"hello $j, User created"
	fi
done
