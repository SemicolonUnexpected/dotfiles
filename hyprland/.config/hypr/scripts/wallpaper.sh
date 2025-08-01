#!/bin/sh
#                _ _
# __      ____ _| | |_ __   __ _ _ __   ___ _ __
# \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__|
#  \ V  V / (_| | | | |_) | (_| | |_) |  __/ |
#   \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|
#                   |_|         |_|
#
# -----------------------------------------------------

# Define the directory where your wallpapers are stored
WALLPAPER_DIR="$HOME/.config/wallpapers/"

# Get a random wallpaper file from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Tell hyprpaper to reload with the new wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"
