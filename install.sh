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

cmd=(dialog --separate-output --checklist "Select options:" 22 76 16)
options=(1 "Basics" on
         2 "Games" off
         3 "Games" off)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)
			echo Installing basics...
            yay -S $(cat basics.txt | cut -d' ' -f1)
            ;;
        2)
            echo Installing Games...
            yay -S $(cat games.txt | cut -d' ' -f1)
            ;;
        3)
            echo Installing Heavier...
            yay -S $(cat heavier.txt | cut -d' ' -f1)
            ;;
    esac
done


cmd=(dialog --separate-output --checklist "Select options:" 22 76 16)
options=(1 "i3" on
         2 "xfce" off
         3 "xfce extra" off
         4 "kde" off
         5 "kde extra" off)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)
			echo Installing basics...
            yay -S $(cat basics.txt | cut -d' ' -f1)
            ;;
        2)
            echo Installing Games...
            yay -S $(cat games.txt | cut -d' ' -f1)
            ;;
        3)
            echo Installing Heavier...
            yay -S $(cat heavier.txt | cut -d' ' -f1)
            ;;
    esac
done
