#!/bin/sh
#                _ _
# __      ____ _| | |_ __   __ _ _ __   ___ _ __
# \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__|
#  \ V  V / (_| | | | |_) | (_| | |_) |  __/ |
#   \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|
#                   |_|         |_|
#
# -----------------------------------------------------

# -----------------------------------------------------
# Select a random wallpaper
# -----------------------------------------------------

WALLPAPER=$(ls ~/.config/wallpapers/ | shuf -n 1)

# -----------------------------------------------------
# Set the new wallpaper
# -----------------------------------------------------

cp /dev/null ~/.config/hypr/hyprpaper.conf
echo "splash = false" >> ~/.config/hypr/hyprpaper.conf
echo "preload = ~/.config/wallpapers/$WALLPAPER" >> ~/.config/hypr/hyprpaper.conf
echo "wallpaper = ,~/.config/wallpapers/$WALLPAPER" >> ~/.config/hypr/hyprpaper.conf
