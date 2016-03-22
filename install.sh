#!/bin/bash
# a simple list commmands to set the suph-plymouth as the default boot splash screen theme
# change "suph-plymouth" to any other custom theme you wish to install
# INSTALLATION INSTRUCTIONS:
# make install.sh executable and run it from the terminal

# make a new directory for storing the theme
sudo mkdir /lib/plymouth/themes/suph-plymouth

# copy the contents
sudo cp --recursive {images,suph.plymouth,suph.script,README.md} /lib/plymouth/themes/suph-plymouth

# set as default theme
sudo ln -sf /lib/plymouth/themes/suph-plymouth/suph.plymouth /etc/alternatives/default.plymouth
