# Helper function to print title text
titleText () {
	printf "\n\n######## $1 ########\n\n"
}

# Vars to make setup easier to configure
EMAIL="m.gracey1409@gmail.com"


titleText "Upgrading system"

sudo pacman -Syu

titleText "Copying configs"

# Copy all the configs in the configs directory to the home directory
cp ./configs/. ~

titleText "Installing some useful packages"

sudo pacman -S git neovim neofetch openssh 

titleText "Installing yay"

git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
cd ~
sudo rm -r yay

titleText "Installing Hyprland"

yay -S hyprland

titleText "Making directories"

mkdir ~/repos

titleText "Generating ssh keys"

ssh-keygen -t ed25519 -C $EMAIL

titleText "Setup finised"

printf "You may now want to add your ssh key to github : \n"
cat .ssh/id_ed25519.pub
