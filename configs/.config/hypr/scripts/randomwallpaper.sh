#!/bin/sh

WALLPAPER=$(ls ~/.config/wallpapers/ | shuf -n 1)
hyprctl hyprpaper preload "~/.config/wallpapers/$WALLPAPER"
hyprctl hyprpaper wallpaper "eDP-1,~/.config/wallpapers/$WALLPAPER"
echo hi >>~/test.txt
