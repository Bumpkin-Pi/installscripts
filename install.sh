#!/bin/bash

# echo Installing yay...
# git clone "https://aur.archlinux.org/yay.git"
# cd yay
# makepkg -si
# cd ..
# echo Installing Fish...
# yay -S fish
# echo Installing dialog
# yay -S dialog
# echo Changing shell...
# chsh -s /bin/fish

cmd=(dialog --separate-output --checklist "Select scripts to run:" 22 76 16)
options=(1 "packages" on
         2 "wm" on
         3 "config" on
         4 "themes" on)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)
			bash packages.sh
			;;
        2)
            bash wm.sh
            ;;
        3)
			bash config.sh
			;;
		4)
			bash themes.sh
			;;
    esac
done