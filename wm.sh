#!/bin/bash

cmd=(dialog --separate-output --checklist "Select WMs to instlal:" 22 76 16)
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
			echo Installing i3...
            yay -S i3
            yay -S dmenu
            ;;
        2)
            echo Installing xfce...
            yay -S xfce4
            ;;
        3)
			echo Installing xfce extras...
			yay -S xfce4-goodies
			;;
		4)
            echo Installing KDE...
            yay -S plasma
            ;;
        5)
			echo Installing KDE extras...
			yay -S kde-applications
			;;
    esac
done
