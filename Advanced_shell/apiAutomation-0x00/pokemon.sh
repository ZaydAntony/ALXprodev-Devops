#!/bin/bash


# Goals 
#Get specific pokemon pikachu from pokemon Api
#Log output to data.json file
#log errors to error.txt file

URL="https://pokeapi.co/api/v2/pokemon/pikachu"

#Making api request and saving to data.json 
curl -s "$URL" -o data.json

#Checking if it is successful

if [ $? -ne 0 ]; then
    echo "Error fetching data from API at $(date)" >> errors.txt
else
    echo "Output saved successfully"
fi