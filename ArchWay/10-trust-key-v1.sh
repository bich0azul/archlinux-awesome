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

#sudo pacman-key --keyserver hkp://pool.sks-keyservers.net:80 -r 74F5DE85A506BF64
#sudo pacman-key --keyserver https://pgp.mit.edu -r E3CA74FEF52B4D3D
sudo pacman-key --keyserver hkps://hkps.pool.sks-keyservers.net:443 -r E3CA74FEF52B4D3D
sudo pacman-key --lsign-key E3CA74FEF52B4D3D

echo "################################################################"
echo "###                   key trusted                           ####"
echo "################################################################"
