#!/bin/bash

printf "\n######### Upgrading system ########\n"

sudo pacman -Syu

printf "\n######## Copying configs to ~ #########\n"

# All configs are located in the config directory so
# copy them all to the home directoryuring the setup 
cp -t ~ configs/* -r

printf "\n######## Setting up git #########\n"

sudo pacman -S git
git config --global user.email "m.gracey1409@gmail.com"
git config --global user.name "SemicolonUnexpected"
git config --global core.editor "nvim"
mkdir ~/repos

printf "\n######## Generating ssh keys #########\n"

ssh-keygen -t ed25519 -C "m.gracey1409@gmail.com"
cat ~/.ssh/id_ed25519.pub

printf "\n######## Testing connection to github #########\n"

ssh -T git@github.com

printf "\n######## Changing shell to zsh #########\n"

sudo pacman -S zsh
chsh -s /bin/zsh

printf "\n######## Setting up xorg and i3 #########\n"

sudo pacman -S xorg xorg-xserver xorg-xinit i3-wm rofi alacritty polybar

printf "\n######### Installing packages ########\n"

sudo pacman -S neofetch neovim zsh python3 tree yt-dlp feh

printf "\n######## Installing haskell #########\n"

curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

printf "\n######## Installing rust #########\n"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

printf "\n######## Installing yay #########\n"

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

printf "\n######## Setup script finised #########\nYou may now want to setup zsh with ohmyzsh or zsh4humans\nEnter vim to install plugins"




