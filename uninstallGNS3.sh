#!/bin/bash

echo "Update ..."
sudo apt update

echo
echo "Uninstall dependencies ..."
sudo apt purge qemu-kvm* qemu-utils* libvirt-clients* libvirt-daemon-system* virtinst* wireshark* xtightvncviewer* apt-transport-https* gnupg2* -y
sudo apt autoremove

echo
echo "Uninstall gns3 server and GUI ..."
pip3 uninstall gns3-server gns3-gui --break-system-packages
sudo dpkg -r dynamips_0.2.14-1_amd64.deb
rm dynamips_0.2.14-1_amd64.deb

echo
echo "Update system ..."
sudo apt update && sudo apt full-upgrade -y

echo
echo "Congratulations GNS3 has been uninstalled ..."
