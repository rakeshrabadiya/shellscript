#!/bin/bash
sudo apt clean
sudo apt autoremove -y
sudo apt update && sudo apt full-upgrade -y
sudo apt --fix-broken install
sudo dpkg --configure -a
sudo rm -rf ~/.cache/*
sudo rm -rf /var/log/*
echo "✅ Kali Linux Refreshed and Cleaned!"
