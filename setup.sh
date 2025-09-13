#!/bin/bash
# Rizal Community Center - Ubuntu Setup Script
# Maintainer: Md Ali (mdhaliev@gmail.com)

set -e

echo "=== Updating system packages ==="
sudo apt update && sudo apt upgrade -y

echo "=== Installing productivity tools ==="
sudo apt install -y libreoffice evince gnome-calculator thunderbird chromium-browser

echo "=== Installing creativity & media tools ==="
sudo apt install -y gimp vlc cheese inkscape audacity

echo "=== Installing educational tools ==="
sudo apt install -y scratch tuxpaint 
sudo snap install gcompris

echo "=== Installing utilities ==="
sudo apt install -y gnome-tweaks gnome-software flatpak htop build-essential curl git python3-pip

echo "=== Enabling firewall ==="
ufw enable

echo "=== Installing antivirus (ClamAV) ==="
sudo apt install -y clamav clamav-daemon
sudo systemctl enable clamav-freshclam
sudo systemctl start clamav-freshclam

echo "=== Cleaning up ==="
sudo apt autoremove -y
sudo apt clean

echo "Setup complete! Please reboot your system."

