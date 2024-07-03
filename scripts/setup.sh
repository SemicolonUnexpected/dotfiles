#
# Helper function to print title text
titleText() {
	printf "\n\n######## $1 ########\n\n"
}

# Helper function to prompt for setup
promptSetup() {
    while true; do
        read -p "$1 [Y/n] " yn
        case $yn in
            [Nn]* ) return 1;;
            * ) return 0;;
        esac
    done
}

# Install on prompt
installOnPrompt() {
    if [promptSetup $1 ]
        yay -S $2
    fi
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

yay -S neofetch neovim btop kitty firefox hyprland rofi-lbonn-wayland hyprpaper brightnessctl bluez bluez-util

titleText "Installing qemu"

yay -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils iptables ebtables
sudo systemctl enable libvirt.service
sudo systemctl start libvirt.service

titleText "Making directories"

mkdir ~/repos

titleText "Generating ssh keys"

ssh-keygen -t ed25519 -C $EMAIL

titleText "Setup finised"

printf "You may now want to add your ssh key to github : \n"
cat .ssh/id_ed25519.pub
