#!/bin/bash

# Function to generate a random number based on the distribution
generate_random_number() {
    rand=$((RANDOM % 100))

    if ((rand < 20)); then
        echo 0
    elif ((rand < 70)); then
        echo $((1 + RANDOM % 3))
    else
        echo $((4 + RANDOM % 9))
    fi
}

# Loop based on the generated random number
random_number=$(generate_random_number)
for ((i=0; i<$random_number; i++)); do
    # Your script with the current iteration number
    cd ~/2024/green-tile-project/
    echo "Tile at location" $(date) "painted with random number: $i" >> report.txt
    git pull
    git add .
    git commit -m "Painting tile at $(date)"
    git push origin main

    # Sleep for a while (optional, to space out the iterations)
    sleep 1
done