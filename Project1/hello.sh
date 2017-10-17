#!/bin/bash

#File: hello.sh
#Author: Duy Do
#Author's email: duy.ado@fullerton.edu
#Author's Github: https://github.com/DA01171997
#Project: Sends message respective to time to user. 
#Project Idea's Author: Thomas Nguyen
#Date last Modified: 10/17/2017 
#Compile and execute program in Bash Shell. Type ./hello.sh in to respective directory's terminal. 

Me=$(whoami) #User Name
time="$(date +%l):$(date +%M) $(date +%p)" #time 
mtime="$(date +%H)" #time to check

if [ "$mtime" -ge 6 ] && [ "$mtime" -lt 12 ]; then #morning message 
	timemessage="Have a good morning!"
 
elif [ "$mtime" -ge 12 ] && [ "$mtime" -lt 18 ]; then #afternoon message
         timemessage="Have a good afternoon!"
	
elif [ "$mtime" -ge 18 ] && [ "$mtime" -lt 24 ]; then #evening message
         timemessage="Have a good evening!" 
elif [ "$mtime" -ge 0 ] && [ "$mtime" -lt 6 ]; then #midnight message 
         timemessage="Don't work too hard!"
fi
if [ "$#" -eq 0 ]; then #check for no argument 

	echo "Hello $Me, it is$time. $timemessage" #print message
else
	echo "Error: Script doesn't takes argument" #print error message when arguments given script 
	exit 1
fi 
