#!/bin/bash

# Get the directory path to change to
dir=$(zoxide query -i "$1")

if [ -z "$dir" ]; then
    echo "No matching directory found"
    exit 1
fi

# Change to the directory
cd "$dir"

# Check if tmux is already running
if [ -z "$TMUX" ]; then
    # Start a new tmux session with the directory name
    tmux new-session -s "$(basename "$dir")"
else
    # Check if the tmux session already exists
    tmux has-session -t "$(basename "$dir")" 2>/dev/null
    if [ "$?" -eq 0 ]; then
        # If the session already exists, attach to it
        tmux switch-client -t "$(basename "$dir")"
    else
        # If the session does not exist, create a new one
        tmux new-session -s "$(basename "$dir")"
    fi
fi

