#!/bin/bash

#File: stars.sh
#Author: Duy Do
#Author's email: duy.ado@fullerton.edu
#Author's Github: https://github.com/DA01171997
#Project: Draws stars
#Project Idea's Author: Thomas Nguyen
#Project Idea's Author's email: thonguyen@fullerton.edu
#Date last Modified: 10/17/2017 
#Compile and execute program in Bash Shell. Type ./stars.sh in to respective directory's terminal. 

number=$1 #number of star 
triangle() { #stars function 
	for (( row=0; row<$number;row++ )) 
	do
		for (( col=0; col<=row; col++))
		do 
			echo -n "*"
		done
		echo 
	done   
}

isInteger() { #test for integer
 if [[ $1 =~ ^[+-]?[0-9]+$ ]]; then
 return 0
 else
 return 1
 fi
}

if [ "$#" -gt 1 ]; then #test for too many arguments 
	echo "Error: too many arguments"
	condition=0
	exit 1

	elif [ "$#" -eq 0 ]; then #test for no argument
		echo "Error: 1 argument is needed"
		condition=0
		exit 1

	elif (!(isInteger $1)); then #test for integer argument
		echo "Error: argument is not an integer"
		condition=0
		exit 1
	
	elif [ "$#" -lt 0 ]; then #test for no argument
		echo "Error: script need 1 argument"
		condition=0
		exit 1

	elif [ $(echo "$number < 0.0"|bc) -eq 1 ]; then #test for negative argument
		echo "Error: no negative argument"
		condition=0
		exit 1
	elif [ $(echo "$number < 1.0 "|bc) -eq 1 ]; then #test for 1 or more star
		echo "Error: 1 or greater for argument"
		condition=0
		exit
	
	else 
		triangle #call function to to draw stars
	
fi