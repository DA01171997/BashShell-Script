#!/bin/bash

#File: getAbsPath.sh
#Author: Duy Do
#Author's email: duy.ado@fullerton.edu
#Author's Github: https://github.com/DA01171997
#Project: Finds absolute paths
#Project Idea's Author: Thomas Nguyen
#Project Idea's Author's email: thonguyen@fullerton.edu
#Date last Modified: 10/17/2017 
#Compile and execute program in Bash Shell. Type ./getAbsPath.sh in to respective directory's terminal. 

name(){ 		#Function for name of the argument and it directories path
Dname=$(dirname $1)	#Directories path of argument
fname=$(basename $1)	#Name of the argument
}
originalPath=$(pwd)	#Save executing directory path

if [ "$#" -ne 0 ]; then #check to see if argument is given 
	for path in "$@"; do # for loop to find path for all the argument 
		cd "$originalPath"	#Return to executing directory path
		if [ -d "$path" ]; then 		#check if argument is a directory
			cd $path			#go to the argument location
			if [ "$path" == "$(pwd)" ]; then 	#if argument already absolute path 
				echo "$path => already absolute path" #then print this
			else 
				echo "$path => $(pwd)"		#else print absolute path
			fi
		
		elif [ -f "$path" ]; then 	#check if argument is file but would still work for sym link 
			name $path		#call name function
			cd $Dname		#go to the argument location
			if [ "$path" == "$(pwd)/$fname" ]; then 
				echo "$path => already absolute path"
			else
				echo "$path => $(pwd)/$fname" #print absolute path
			fi		
		else
			echo "$path => Error: files or directories doesn't exist" # else the file or directories doesnt exists 	
		fi 
	done
else
	echo "Error: Need arguments" #error need argument 
	exit 1
fi