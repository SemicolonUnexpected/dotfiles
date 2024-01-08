#!/bin/sh

WALLPAPER=$(ls ~/.config/wallpapers/ | shuf -n 1)
hyprctl hyprpaper wallpaper ~/.config/wallpapers/$WALLPAPER
