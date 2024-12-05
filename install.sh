#!/bin/bash

# ANSI Colors
GREEN="\e[1;32m" # Init
CYAN="\e[1;36m" # Installation ...
RESET="\e[0m" # Reset color

clear # clear
echo -e """${GREEN}
█ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █ █▄░█ █▀▀ ░ ░ ░
█ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ █ █░▀█ █▄█ ▄ ▄ ▄
${RESET}"""

# Install packages on Termux!!
apt update
apt upgrade -y
clear
echo -e """${CYAN}
█ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░   █▀▀ █ ▀█▀
█ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄   █▄█ █ ░█░
${RESET}"""
apt install git -y
clear
echo -e """${CYAN}
█ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░
█ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄

█▀█ █░█ █▄▄ █▄█
█▀▄ █▄█ █▄█ ░█░
${RESET}"""
apt install ruby -y
clear
echo -e """${CYAN}
█ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░
█ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄

█░░ █▀█ █░░ █▀▀ ▄▀█ ▀█▀
█▄▄ █▄█ █▄▄ █▄▄ █▀█ ░█░
${RESET}"""
gem install lolcat

clear
echo "All installed [ ok ] ✅"

echo """
╔═══╗───────╔╗──────╔╦╗
║╔══╝───────║║──────║║║
║╚══╦╦═╗╔╦══╣╚═╦══╦═╝║║
║╔══╬╣╔╗╬╣══╣╔╗║║═╣╔╗╠╝
║║──║║║║║╠══║║║║║═╣╚╝╠╗
╚╝──╚╩╝╚╩╩══╩╝╚╩══╩══╩╝
""" | lolcat

echo -e """${GREEN}
📄NOTES
    🚀 Run $ bash remove.sh
           remove packages
    🚀 Run $ bash script.sh
           init script

   ------------------------------
   Script by AHDEZ007@HACK | 2024
${RESET}"""
