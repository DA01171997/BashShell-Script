#!/bin/bash

#File: shiftCase.sh 
#Author: Duy Do
#Author's email: duy.ado@fullerton.edu
#Author's Github: https://github.com/DA01171997
#Project: Changes case of string
#Project Idea's Author: Thomas Nguyen
#Date last Modified: 10/17/2017 
#Compile and execute program in Bash Shell. Type ./shiftCase.sh in to respective directory's terminal. 

echo "usage: <command> option: [-h] [-l] [-u]"
}
option="" # check if valid option is provided
if [ "$#" -eq 0 ]; then #check for no argument or option
	echo "Error: no argument or option was provided"
	usage
	exit 1
else
	while getopts "h,l:,u:" opt; do #get top funtion 
		case $opt in
			"h")	usage; exit 0 #help option
				option="true"	#option captured	
			;;
			"l") 	if [ "$2" == "-u" ]; then #lower case option
					echo "Error: only take one option" 
					usage
					exit 1
				else			 
					for i in "$@"; do #loop through all the arguments
						if [ "$i" != "$1" ]; then #skip the option
							echo $i | tr [A-Z] [a-z] #convert to lower case 
						fi
					done
				fi	
				option="true"	#option captured
			;;
			"u")	if [ "$2" == "-l" ]; then #upper case option
					echo "Error: only take one option" 
					usage					
					exit 1
				else 	
					for i in "$@"; do #loop through all the arguments 
						if [ "$i" != "$1" ]; then #skip the option	
							echo $i | tr [a-z] [A-Z] #convert to upper case
						fi
					done
				fi
				option="true" #option captured
			;;
			\?)
			usage
			exit 1
			;;
			:)
			echo "Option -$OPTARG requires argument." #show invalid option
			usage
			exit 1
		esac
	done
fi
if [ -z "$option" ]; then #error if no option was provided 
	echo "Error: no option was provided"
	usage
fi