#!/bin/bash

####################################################################################################
################################# Required Packaged and Tools ######################################
####################################################################################################

# Linux OS of some sort
# git
# wget
# Google Chrome
# NPM
# Rendertron

####################################################################################################
################################### Declare Color Scheme ###########################################
####################################################################################################

bblue='\033[1;34m'
bgreen='\033[1;32m'
reset='\033[0m'

####################################################################################################
##################################### Installation Script ##########################################
####################################################################################################

printf "${bgreen}[*] Installing Rendertron and its Dependencies [*]\n\n${reset}"

# Update Source List and Repos

printf "${bblue}[+] Updating Source List\n\n${reset}"
apt update
printf "\n"

# Install wget

printf "${bblue}[+] Installing wget\n\n${reset}"
apt install wget
printf "\n"

# Install GIT (Github)

printf "${bblue}[+] Installing git\n\n${reset}"
apt install git
printf "\n"

# Download Google Chrome Release

printf "${bblue}[+] Installing Google Chrome\n\n${reset}"
mkdir google
cd google
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb -y
cd ..
rm -rf google
printf "\n"


# Install NPM

printf "${bblue}[+] Installing NPM\n\n${reset}"
apt install npm -y
printf "\n"


# Install Rendertron

printf "${bblue}[+] Installing Rendertron \n\n${reset}"
git clone https://github.com/GoogleChrome/rendertron.git
cd rendertron
npm install
npm run build
printf "\n"


# Start Rendertron
printf "${bgreen}[+] Installation Complete\n\n${reset}"
printf "${bblue}[+] To start Rendertron run - npm run start\n\n${reset}"
printf "${bblue}[+] To test Rendertron use - curl http://<rendertron-server-ip>:3000/render/<Target URL>${reset}"
printf "\n"
