# Makefile for the Guessing Game Project

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "This project is a simple guessing game written in Bash." >> README.md
	echo "" >> README.md
	echo "## Run Information" >> README.md
	echo "This file was generated on: $$(date)" >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	echo "$$(wc -l < guessinggame.sh) lines" >> README.md

clean:
	rm -f README.md
