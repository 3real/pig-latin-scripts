#!/usr/bin/env bash

set -x

#prompt for user input and line to record user input
echo "Please write a line to be translated to pig-latin"
read userInput

#test input is reading properly
echo $userInput

#this is how to get first letter
firstLetter=${userInput:0:1}
echo $firstLetter

#this is how to remove first letter
serInput="${userInput:1}"
echo $serInput


if [[ "$firstLetter" != *[aeiou]* ]];then
	latin=$serInput$firstLetter"ay"
	echo $latin
else
	latin=$userInput"way"
	echo $latin
fi