#!/bin/bash
#The challenge for chapter 4 in the lynda video.
echo -e "guess.bash - Guess a number between 1 and 10\n"

### Generate random number
(( answer = RANDOM % 9 + 1 ))

### Play game
while (( guess != answer )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher..."
	elif (( guess > answer )); then
		echo "Lower..."
	fi
done
echo -e "Correct! That took $num guesses.\n"
