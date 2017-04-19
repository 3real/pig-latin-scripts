#!/usr/bin/env bash

#Use set -x to run line by line for debugging
set -x

#prompt for user input and line to record user input
echo "Please write a line to be translated to pig-latin"
#read userInput
userInput="a mike is a fool"	#for test purposes

userArray=( $userInput )

pigArray=("${userArray[@]}")

igArray=("${userArray[@]}")

arraylength=${#userArray[@]}

for (( i=0; i<${arraylength}; i++ ));
	do
		echo "${userArray[$i]:0:1}" | grep "^[aeiou]"
		if [ $? = 0 ];then
			igArray[$i]="${userArray[$i]}way"

		else
			pigArray[$i]="${userArray[$i]}${userArray[$i]:0:1}ay"
			igArray[$i]="${pigArray[$i]:1}"

		fi
	done

printf '%s ' "${igArray[@]}"

echo
