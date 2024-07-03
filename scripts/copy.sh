#!/bin/bash

# Copy the specified file or directory to the configs directory
copy() {
	printf "Copying : $1\n"

    cp $1 ../configs/ -r
}

copyInside() {
	printf "Copying : $1\n"

    cp $1 ../configs/.config/ -r
}

# Copy dotfiles found in the home directory
copy ~/.bashrc
copy ~/.bash_profile
copy ~/.profile
copy ~/.gitconfig

# Copy dotfiles located in ~/.config
copyInside ~/.config/shell
copyInside ~/.config/nvim
copyInside ~/.config/neofetch

copyInside ~/.config/starship.toml
copyInside ~/.config/alacritty
copyInside ~/.config/rofi
copyInside ~/.config/wallpapers
copyInside ~/.config/inkscape
copyInside ~/.config/GIMP

copyInside ~/.config/hypr
