#! /bin/bash

nfiles=$(pwd | ls | wc -l)
guessedcorrect="no"

function promptevaluate {
	echo "Guess how many files are in the current working directory?"
	read guess
	if [[ guess -lt  nfiles ]]
	then 
		echo "You guessed $guess, which is a bit too low..."
	elif [[ guess -gt  nfiles ]]
	then
		echo "You guessed $guess, which is a bit too high..."
	else
		echo "Congrats! You guessed correctly....what are you a psychic?!?"
		let guessedcorrect="yes"
	fi
}

while [[ $guessedcorrect == "no" ]]
do
	promptevaluate
done

