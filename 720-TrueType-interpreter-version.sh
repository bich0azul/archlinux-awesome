#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#echo "THIS SCRIPT WILL ASK YOUR LOGINNAME "
#echo "AND WILL USE IT TO ADD YOU TO THE AUTOLOGIN GROUP "
#echo "https://wiki.archlinux.org/index.php/LightDM#Enabling_autologin"

##Change your username here
##read -p "What is your login? It will be used to add this user to the group autologin : " choice
##sudo gpasswd -a $choice autologin

# Subpixel hinting mode can be chosen by setting the right TrueType interpreter
# version. The available settings are:
#
#     truetype:interpreter-version=35  # Classic mode (default in 2.6)
#     truetype:interpreter-version=38  # Infinality mode
#     truetype:interpreter-version=40  # Minimal mode (default in 2.7)
#
# There are more properties that can be set, separated by whitespace. Please
# refer to the FreeType documentation for details.

sudo sed -i 's/export FREETYPE_PROPERTIES=\"truetype:interpreter-version=.*\"/export FREETYPE_PROPERTIES=\"truetype:interpreter-version=40\"/g' /etc/profile.d/freetype2.sh

echo "################################################################"
echo "####          TrueType-interpreter-version added          ######"
echo "################################################################"

#sudo ln -s /etc/fonts/conf.avail/10-hinting-slight.conf /etc/fonts/conf.d/10-hinting-slight.conf
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d/10-sub-pixel-rgb.conf
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d/11-lcdfilter-default.conf

echo "################################################################"
echo "####                Fonts look awesome now!!!             ######"
echo "################################################################"
