#/bin/bash

printf "######### Upgrading system ########"

sudo pacman -Syu

printf "######### Installing packages ########"

sudo pacman -S git neofetch curl neovim zsh python3 

pip install yt-dlp

git clone https://aur.archlinux.org/yay.git ~
cd ~/yay
makepkg -su
cd ~ rm -r yay

printf "######## Installing haskell #########"
printf "######## Installing rust #########"
printf "######## Installing python3 #########"
