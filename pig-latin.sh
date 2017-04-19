#!/usr/bin/env bash

#Use set -x to run line by line for debugging
#set -x

#prompt for user input and line to record user input
echo "Please write a line to be translated to pig-latin"
#read userInput
userInput="mike is a fool"	#for test purposes

userArray=( $userInput )

for i in userArray
	do
		[[ ${userArray[$i]} | grep ^[aeiou] ]]
		if [$?==1];then
			userArray[$i]="vowel"
		fi
	done

printf '%s ' "${userArray[*]}"

echo
