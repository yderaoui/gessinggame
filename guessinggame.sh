#!/usr/bin/env bash

# Function to count files in the current directory
file_count() {
    echo $(ls -1 | wc -l)
}

# Main game loop
correct_count=$(file_count)
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while true; do
    read -p "Enter your guess: " guess

    if [[ $guess -eq $correct_count ]]; then
        echo "Congratulations! Your guess is correct!"
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
