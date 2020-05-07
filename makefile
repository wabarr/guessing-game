README.md: 
	echo "## guessing-game\n" > README.md
	echo "This file was automatically generated at the following date and time:\n" >> README.md
	date >> README.md
	echo "\nNumber of lines of code in the guessinggame.sh file:\n " >> README.md
	cat guessinggame.sh | wc -l >> README.md