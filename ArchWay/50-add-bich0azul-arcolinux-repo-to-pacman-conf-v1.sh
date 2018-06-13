#!/bin/bash
#set -e
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

echo '#[bich0azul-arcolinux_repo_testing]
#SigLevel = Required DatabaseOptional
#Server = https://bich0azul.github.io/bich0azul-arcolinux_repo_testing/$arch

[bich0azul-arcolinux_repo]
SigLevel = Required DatabaseOptional
Server = https://bich0azul.github.io/bich0azul-arcolinux_repo/$arch' | sudo tee --append /etc/pacman.conf

echo "################################################################"
echo "###                  arcolinux repo added                   ####"
echo "################################################################"
