#!/bin/bash

# Prints the current directory name then prints all its content by size in descending order.
echo "Files In $(pwd) Directory: "
ls -Slh

# Stores the file name of the largest file in the directory.
LARGEST=$(ls -S | head -n 1)

# Deletes that file and if successful, prints a message in the terminal.
rm $LARGEST && echo "$LARGEST was deleted."