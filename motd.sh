#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
NO_COLOR='\e[0m'
export LC_ALL=fi_FI.UTF-8
ecport LANG=fi_FI.UTF-8
user="$(grep 'sshd' /var/log/auth.log | awk '/session opened for user/{print $11}' | tail -1)"
echo "\033[38;2;32;255;208m"
cat pulinabanner
echo "\033[38;2;255;255;255m"
echo "Moi ${bold}$user${normal},"
echo ""
echo "Tänään on $(date +'%A') ja kello on $(date +'%H.%M'). Sää juuri nyt:"
echo ""
cat weather
echo ""
echo "Käytäthän tmux a screenin sijaan. Kiitos."
echo "Ohjeet: https://www.pulina.fi/ohjeet/pulina-irc-shell-kayttoohje/"
echo ""
echo "Hauskaa irkkailua!"
echo ""
echo "👾 \033[38;2;136;108;228m${bold}rolle${normal}${NO_COLOR}"
echo ""
unset LC_ALL
unset LANG
