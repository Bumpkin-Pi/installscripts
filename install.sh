#!/bin/bash
echo Installing yay...
git clone "https://aur.archlinux.org/yay.git"
cd yay
makepkg -si
cd ..
echo Installing Fish...
yay -S fish
echo Installing dialog
yay -S dialog
echo Changing shell...
chsh -s /bin/fish

