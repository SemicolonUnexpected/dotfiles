#!/bin/bash

# Copy the specified file or directory to the configs directory
copyVerbose() {
	printf "Copying : $1\n"

    cp $1 ./configs/ -r
}

copyVerboseInside() {
	printf "Copying : $1\n"

    cp $1 ./configs/.config/ -r
}

# Copy dotfiles found in the home directory
copyVerbose ~/.bashrc
copyVerbose ~/.bash_profile
copyVerbose ~/.profile
copyVerbose ~/.gitconfig

# Copy dotfiles located in ~/.config
copyVerboseInside ~/.config/shell
copyVerboseInside ~/.config/nvim
copyVerboseInside ~/.config/neofetch

copyVerboseInside ~/.config/starship.toml
copyVerboseInside ~/.config/alacritty
copyVerboseInside ~/.config/rofi
copyVerboseInside ~/.config/wallpapers

copyVerboseInside ~/.config/hypr
