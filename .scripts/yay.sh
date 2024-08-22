sudo pacman -Syu # refresh package cache and update system
sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
rm -rf yay

echo "Yay installed"
