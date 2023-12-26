#!/bin/bash

printf "\n######### Upgrading system ########\n"

sudo pacman -Syu

printf "\n######## Setting up git #########\n"

sudo pacman -S git
git config --global user.email "m.gracey1409@gmail.com"
git config --global user.name "SemicolonUnexpected"
git config --global core.editor "nvim"

printf "\n######## Generating ssh keys #########\n"

ssh-keygen -t ed25519 -C "m.gracey1409@gmail.com"
cat ~/.ssh/id_ed25519.pub

printf "\n######## Testing connection to github #########\n"

ssh -T git@github.com

printf "\n######## Changing shell to zsh #########\n"

sudo pacman -S zsh
chsh -s /bin/zsh

printf "\n######## Copying configs to ~/ #########\n"

cp -t ~ .config .zshrc .zshenv .pk10.zsh .pk10-ascii-8colors.zsh -r

printf "\n######## Setting up xorg and i3 #########\n"

sudo pacman -S xorg xorg-xserver xorg-xinit i3-wm rofi alacritty

printf "\n######### Installing packages ########\n"

sudo pacman -S neofetch neovim zsh python3 tree 
pip install yt-dlp

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






