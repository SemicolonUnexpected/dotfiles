# Helper function to print title text
titleText() {
	printf "\n\n######## $1 ########\n\n"
}

# Helper variables
EMAIL="m.gracey1409@gmail.com"

# Copy all the configs in the configs directory to the home directory
cp ./configs/. ~

titleText "Installing git"

sudo pacman -S git

titleText "Installing yay"

git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
cd ~
sudo rm -r yay

titleText "Installing packages with yay"

yay -S neofetch neovim btop kitty firefox hyprland rofi-lbonn-wayland hyprpaper brightnessctl

titleText "Making directories"

mkdir ~/repos

titleText "Generating ssh keys"

ssh-keygen -t ed25519 -C $EMAIL

titleText "Setup finised"

printf "You may now want to add your ssh key to github : \n"
cat .ssh/id_ed25519.pub
