#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
PULINAGREEN_RGB='\033[38;2;32;255;208m' # Not supported by most clients
PULINAGREEN=$(tput setaf 49)
HOTPINK_RGB='\033[38;2;255;64;132m'
HOTPINK=$(tput setaf 198)
VIOLET_RGB='\033[38;2;136;108;228m'
VIOLET=$(tput setaf 99)
WHITE='\e[0;37m'
NO_COLOR='\e[0m'
export LC_ALL=fi_FI.UTF-8
ecport LANG=fi_FI.UTF-8
user="$(grep 'sshd' /var/log/auth.log | awk '/session opened for user/{print $11}' | tail -1)"
echo "${PULINAGREEN}"
cat /home/rolle/shell/pulinabanner
echo "${WHITE}"
echo "Moi ${bold}$user${normal},"
echo ""
echo "Tänään on $(date +'%A') ja kello on $(date +'%H.%M'). Sää juuri nyt:"
echo ""
cat /home/rolle/shell/weather
echo ""
echo "Käytäthän komentoa ${HOTPINK}tmux a${WHITE} screenin sijaan. Kiitos."
echo ""
echo "${bold}Ohjeet${normal}: ${PULINAGREEN}https://www.pulina.fi/ohjeet/pulina-irc-shell-kayttoohje/${WHITE}"
echo ""
echo "Hauskaa irkkailua!"
echo ""
echo "👾 ${bold}${VIOLET}rolle${normal}${NO_COLOR}"
echo ""
unset LC_ALL
unset LANG
