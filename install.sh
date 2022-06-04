#!/bin/bash
sudo apt update && sudo apt full-upgrade -y
sudo apt install curl nano bash-completion wakeonlan -y
sudo rm -r ~/UCKP
sudo reboot
