#!/bin/bash

echo "Update ..."
sudo apt update

echo
echo "Install dependencies ..."
sudo apt install python3-pip python3-pyqt5 python3-pyqt5.qtsvg python3-pyqt5.qtwebsockets qemu-kvm qemu-utils libvirt-clients libvirt-daemon-system virtinst wireshark xtightvncviewer apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

echo
echo "Install gns3 server and GUI ..."
pip3 install gns3-server gns3-gui --break-system-packages

echo
echo "wait a minute ..."
wget http://ftp.us.debian.org/debian/pool/non-free/d/dynamips/dynamips_0.2.14-1_amd64.deb
sudo dpkg -i dynamips_0.2.14-1_amd64.deb

echo
echo "Congratulations GNS3 has been installed ..."
