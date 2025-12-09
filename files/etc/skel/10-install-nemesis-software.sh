#!/bin/bash
#set -e
##################################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Youtube   : https://youtube.com/erikdubois
##################################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################################

if [ "$DEBUG" = true ]; then
    echo
    echo "------------------------------------------------------------"
    echo "Running $(basename $0)"
    echo "------------------------------------------------------------"
    echo
    read -n 1 -s -r -p "Debug mode is on. Press any key to continue..."
    echo
fi

##################################################################################################################################

echo
tput setaf 2
echo "########################################################################"
echo "################### Installing software from nemesis_repo"
echo "########################################################################"
tput sgr0
echo

# reinstall because of release difference between ArcoLinux and Chaotic-Aur

if [ -f /usr/share/xsessions/xfce.desktop ]; then
  sudo pacman -S --noconfirm menulibre
  sudo pacman -S --noconfirm mugshot
fi

sudo pacman -S --noconfirm --needed arc-gtk-theme
sudo pacman -S --noconfirm --needed archlinux-logout-git
sudo pacman -S --noconfirm --needed edu-sddm-simplicity-git
sudo pacman -S --noconfirm --needed zardoz-neo-candy-icons-git


echo
tput setaf 6
echo "##############################################################"
echo "###################  $(basename $0) done"
echo "##############################################################"
tput sgr0
echo