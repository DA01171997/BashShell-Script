//File: Readme.txt
//Author: Duy Do
//Author's email: duy.ado@fullerton.edu
//Author's Github: https://github.com/DA01171997
//Project: Mini Bash Shell Script Programs
//Project Idea's Author: Thomas Nguyen
//Date last Modified: 10/17/2017 
//Source Files in this program: stars.sh calc.sh hello.sh shiftCase.sh getAbsPath.sh
//Compile and execute program in Bash Shell. Type ./<scripthere> in to respective directory's terminal. 
//Purpose:

1) Write a Bash shell script named “stars.sh” that
	a. Take 1 number as an argument and prints a triangle of asterisks that is left-aligned. For example, if the argument is 4 prints the following:
	*

	**

	***

	****

	b. If there is not exactly 1 argument, or the argument is not an integer, or the integer is less than 1, print an error message and exit
	c. Hint: Use for loops
	
2) Write a Bash shell script named “calc.sh” that
	a. Performs addition (+), subtraction (-), multiplication (x), and integer division (/) math operations.

	b. Takes in 2 operands and 1 operator and prints the result. Example: “calc.sh 5 + 3” would print “8” and “calc.sh 9 / 2” would print “4”
	c. If there are not exactly 3 arguments, or the second argument is not one of the operators in part (a), or first or third argument is not an integer, print an error message and exit

	d. If operator is division (/) and second operand is 0, then print error message “error: cannot divide by 0” and exit
	e. Hint: Use case statement

3) Write a Bash shell script named “hello.sh” that
	a. Prints different messages depending on the time of day when it is executed

	b. Print “Hello <username>, it is <time>. Have a good morning!” if between 6am (inclusive) and noon (exclusive)

	c. Print “Hello <username>, it is <time>. Have a good afternoon!” if between noon (inclusive) and 6pm (exclusive)

	d. Print “Hello <username>, it is <time>. Have a good evening!” if between 6pm (inclusive) and midnight (exclusive)

	e. Print “Hello <username>, it is <time>. Don’t work too hard!” if between midnight (inclusive) and 6am (exclusive)
	f. Replace “<username>” with the actual username of the user running the script

	g. Replace “<time>” with the actual current time in the format “HH:mm AM/PM”

	h. This script should not take any argument, so if there is any argument supplied print an error message and exit

	i. Hint: Use whoami and date commands

4) Write a Bash shell script named “shiftCase.sh” that
	a. Convert the supplied string arguments to all uppercase or all lowercase depending on the supplied flag

	b. If the flag is “-l” performs the lowercase conversion and print the result to screen

	c. If the flag is “-u” performs the uppercase conversion and print the result to screen
	d. Only alphabetic characters are converted. Non-alphabetic characters (such as numbers, punctuation marks, etc.) are not affected.

	e. Exactly one of two options (-l and -u) must be specified. If none are specified, or both are specified, or something other than -l or -u is specified, print an error message and exit.

	f. If there is no argument specified, then print an error message and exit

	g. If there is more than one argument, convert each argument and print each result on a separate line
	h. Hint: Use getopts and tr commands

5) Write a Bash shell script named “getAbsPath.sh” that does the following: 
	a. Take 1 or more relative paths to files or directories as arguments and print the corresponding absolute paths

	b. For each argument given on the command line, print the argument as is, followed by “ => ”, followed by the corresponding absolute path of the argument
	c. If argument is a file or directory that doesn’t exist, print “does not exist” after “ => “

	d. If argument is already an absolute path, print “already absolute path” after “ => “

	e. If argument is a symbolic link you do not have to follow the link, just determine the absolute path of the symbolic link

	f. If there is no argument, print an error message and exit

	g. Important: You can NOT use “realpath” or “readlink” commands.

	h. Hint: Use pwd and basename and dirname commands