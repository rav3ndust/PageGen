#!/bin/bash

# This script installs PageGen on your Linux system and enables it to be run globally. 
# After running this script, simply type "pagegen" from anywhere in your terminal to run the script. 

# PageGen Installer
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

# make PageGen executable
sudo chmod +x pagegen.sh

# copy the files to /usr/bin so it can be run globally
sudo cp pagegen.sh /usr/bin/pagegen 

