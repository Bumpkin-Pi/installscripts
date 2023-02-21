#!/bin/bash

cmd=(dialog --separate-output --checklist "Select programs to copy config to:" 22 76 16)
options=(1 "i3" on
         2 "alacritty" on)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)
			echo Installing i3 config...
			mkdir ~/.config/i3
			cp i3config ~/.config/i3/config
			;;
        2)
            echo Installing alacritty config...
            mkdir ~/.config/alacritty
			cp alacritty.yml ~/.config/alacritty
            ;;
    esac
done