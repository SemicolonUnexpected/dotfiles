#!/bin/bash

cd ~ && git clone https://aur.archlinux.org/paru-bin.git
cd ~/paru-bin/ && makepkg -rsi --noconfirm
cd ~ && rm -Rf ~/paru-bin/
