#!/usr/bin/env bash

# ANSI Colors code
GREEN="\e[1;32m"
RED="\e[0;31m"
YELLOW="\e[0;33m"
RESET="\e[0m"

# Banner
function banner() {
    echo '''
 /$$$$$$$                      /$$
| $$__  $$                    | $$
| $$  \ $$  /$$$$$$   /$$$$$$$| $$$$$$$
| $$$$$$$  |____  $$ /$$_____/| $$__  $$
| $$__  $$  /$$$$$$$|  $$$$$$ | $$  \ $$
| $$  \ $$ /$$__  $$ \____  $$| $$  | $$
| $$$$$$$/|  $$$$$$$ /$$$$$$$/| $$  | $$
|_______/  \_______/|_______/ |__/  |__/
         -- Script by Alberto Hernandez
'''
}

# Función de menú
function menu_user() {
    echo "=== Bienvenido al menu ==="
    echo ""
    echo -e "${YELLOW}[${GREEN}+${YELLOW}] ${RESET}Update system       ... (1)"
    echo -e "${YELLOW}[${GREEN}+${YELLOW}] ${RESET}Upgrade             ... (2)"
    echo -e "${YELLOW}[${GREEN}+${YELLOW}] ${RESET}List                ... (3)"
    echo -e "${YELLOW}[${GREEN}+${YELLOW}] ${RESET}Print Working dir   ... (4)"
    echo -e "${YELLOW}[${RED}-${YELLOW}] ${RESET}Exit ... (0) or type 'exit'${RESET}"
    echo ""
    echo -ne "${GREEN}Choose any option: ${RESET}"
    read opt
    clear

    case $opt in
         1 | 01) apt update;;
         2 | 02) apt upgrade -y;;
         3 | 03) ls;;
         4 | 04) pwd;;
         0 | "exit") echo "Saliendo automaticamente ..." && exit;; # Stop
         *) echo "Opción inválida!!";;
    esac
}

# Llamar a la función
while true; do
  echo -e "${YELLOW}" && banner
  echo -e "${RESET}"
  menu_user
done
