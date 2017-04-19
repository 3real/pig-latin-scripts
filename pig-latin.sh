#!/usr/bin/env bash

#Use set -x to run line by line for debugging
#set -x

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

# This code block uses grep to find vowels and uses the boolean result of grep to apply logic
#echo $firstLetter | grep "^[aeiou]"
#if [ $? = 0 ];then
#	echo vowel
#else
#	echo constanant
#fi

# This code block copares firstLetter to a glob and then applies logic
if [[ "$firstLetter" != *[aeiou]* ]];then
	latin=$serInput$firstLetter"ay"
	echo $latin
else
	latin=$userInput"way"
	echo $latin
fi

#userArray=${userInput// /$'\n'}
#for word in $userArray
#do
#	echo "$word"
#done
