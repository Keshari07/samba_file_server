#!/bin/bash

# Stop Samba services
sudo systemctl stop smbd
sudo systemctl stop nmbd

# Uninstall Samba packages
sudo apt remove --purge samba samba-common samba-common-bin -y

# Remove Samba configuration files and directories
sudo rm -rf /etc/samba
sudo rm -rf /var/lib/samba

# Remove Samba users and groups
# Replace 'sambauser' and 'sambagroup' with your actual user and group names if they exist
# sudo deluser sambauser
# sudo delgroup sambagroup

# Clean up
sudo apt autoremove -y
sudo apt autoclean

echo "Samba has been successfully uninstalled."
