#!/bin/bash
# Rizal Community Center - Ubuntu Update Script
# Maintainer: Md Ali (mdhaliev@gmail.com)

set -e

echo "=== Updating package lists ==="
sudo apt update -y

echo "=== Upgrading installed packages ==="
sudo apt upgrade -y
sudo apt dist-upgrade -y

echo "=== Removing unused packages ==="
sudo apt autoremove -y
sudo apt clean

echo "=== Updating Flatpak apps (if installed) ==="
if command -v flatpak &> /dev/null
then
    sudo flatpak update -y
fi

echo "=== Updating ClamAV signatures ==="
if command -v freshclam &> /dev/null
then
    sudo freshclam
fi

echo "System update complete! A reboot is recommended."

