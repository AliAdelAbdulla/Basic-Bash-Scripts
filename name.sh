#!/bin/bash

# Prompt the user to enter their first and last name in one line.
echo -n "Enter first and last name:"
read firstname lastname

# Check if both firstname and lastname are provided
if [ -z "$firstname" ] || [ -z "$lastname" ]; then
    echo "Error: Both first name and last name are required."
    exit 1
fi

# Check if the file names.csv exists
if [ ! -f names.csv ]; then
    # If the file does not exist, create it and add headers
    echo "FirstName,LastName" > names.csv
fi

# Append the user's input to names.csv
echo "$firstname,$lastname" >> names.csv