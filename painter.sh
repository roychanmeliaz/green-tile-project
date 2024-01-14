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

# Loop 10 times
for ((i=0; i<10; i++)); do
    random_number=$(generate_random_number)
    
    # Your script with the random number
    cd ~/2024/green-tile-project/
    echo "Tile at location" $(date) "painted with random number: $random_number" >> report.txt
    git pull
    git add .
    git commit -m "Painting tile at $(date)"
    git push origin main

    # Sleep for a while (optional, to space out the iterations)
    sleep 1
done
