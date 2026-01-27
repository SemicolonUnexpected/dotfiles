#!/usr/bin/env bash

# Check if any directories were passed as arguments
if [[ $# -gt 0 ]]; then
    # Use the arguments as the search paths for find
    search_paths=("$@")
else
    # Default search paths if no arguments are provided
    search_paths=("~/repos" "~/.config" "~/nixos")
fi

# If a single argument was provided, use it directly (original behavior for explicit selection)
if [[ $# -eq 1 ]]; then
    selected=$1
else
    # Search for directories using the defined paths and pipe to fzf
    # The 'printf' command formats the search_paths array into a space-separated string
    # which is then passed as an argument list to 'find'.
    selected=$(find "${search_paths[@]}" -mindepth 1 -maxdepth 1 | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    # Start a new tmux server and session
    tmux new-session -s $selected_name -c $selected -n $selected_name
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    # Create a new detached session
    tmux new-session -ds $selected_name -c $selected -n $selected_name
fi

# Switch to the new or existing session
tmux switch-client -t $selected_name
