#!/bin/bash

# Check if the user provided a process name
if [ -z "$1" ]; then
    echo "Usage: $0 <process_name>"
    exit 1
fi

# Assign the first argument to the variable PROCESS_NAME
PROCESS_NAME=$1

# Finds all the current running processes then outputs that into grep.
# Grep will filter for all the processes with the provided process name then silence the output
if ps -e | grep -q "$PROCESS_NAME"; then
    killall "$PROCESS_NAME"
    echo "$PROCESS_NAME application killed."
else
    echo "$PROCESS_NAME is not running in the background."
fi