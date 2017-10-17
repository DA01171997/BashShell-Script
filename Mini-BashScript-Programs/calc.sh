#!/bin/bash

#File: calc.sh
#Author: Duy Do
#Author's email: duy.ado@fullerton.edu
#Author's Github: https://github.com/DA01171997
#Project: Simple Calculator
#Project Idea's Author: Thomas Nguyen
#Project Idea's Author's email: thonguyen@fullerton.edu
#Date last Modified: 10/17/2017 
#Compile and execute program in Bash Shell. Type ./calc.sh in to respective directory's terminal. 

isInteger() { #test for integer
 if [[ $1 =~ ^[+-]?[0-9]+$ ]]; then
 return 0
 else
 return 1
 fi
}
calculation=$2 #arithmetic Operator 

if [ "$#" -eq 3 ]; then #check for 3 arguments 
	if ((isInteger $1)&&(isInteger $3)); then #check if 1st and 3 arguments integers 
		case $calculation in 
			+) #addition
			echo $(($1 + $3)) 	
					;;
			-) #subtraction
			echo $(($1 - $3))
				;;
			x) #multiplication 	
			echo $(($1 * $3))
				;;
			/) #division
			if [ "$3" -eq 0 ]; then #check if 3nd argument isn't 0
				echo "Error: Cannot divide by 0"
				exit 1
			else 
				echo $(($1 / $3)) 
			fi
				;;
			*) #base case, error if no valid 2nd argument 
				echo "Error: 2nd argument must be '+' '-' 'x' '/' *Example: ./calc.sh  3 + 3"
				exit 1
		esac 
	else 
		echo "Error: 1st and 3 arguments must be an integer" #error if 1 and 3 arguments are not integer
 		exit 1
	fi  
else 
	echo 'Error: There needs to be 3 arguments *Example: ./calc.sh  3 + 3' #error if 3 arguments are not given
	exit 1
fi
