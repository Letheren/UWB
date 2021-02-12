

#!/usr/bin/env bash
# File: guessinggame2.sh

function test
	{
	if  [[ $1 -lt $2 ]]
	then
		echo "the number you chose is too low"
		return 1
	elif [[ $1 -gt $2 ]]
	then
		echo "the number you chose is too high"
		return 1
	else
		echo "Congratulation"
		return 0
	fi
	}


echo "~~~~  Welcome to the Guessing Game  ~~~~"
response=-1
answer=$(ls -1 | wc -l)
temp=1
while [[ $temp -ne 0 ]]
do
	echo "How many files are in the current directory?"
	read  response
	test $response $answer
	temp=$?
done
