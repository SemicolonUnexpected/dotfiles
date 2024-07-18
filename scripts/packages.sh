printf "Installing git..."
sudo pacman -S git

printf "Installing yay..."
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
cd ~
sudo rm -r yay

printf "Installing other packages..."

# Hyprland core packages
yay -S hyprland hyprpaper

# Other packages
yay -S neofetch htop alacritty rofi-lbonn-wayland \
    neovim bluez bluez-utils brightnessctl swappy \
    dunst grim slurp gimp inkscape


