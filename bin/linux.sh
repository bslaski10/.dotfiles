#!/bin/bash

##checks if operating system is Linux then dumps an error if it isn't
if [ "$(uname)" != "Linux" ]; then
echo "Error this script can only be run on a linux system." >> linuxsetup.log
exit
fi
## Create the .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH
## Backup .vimrc file if it exists
if [ -f ~/.vimrc ]; then
mv ~/.vimrc ~/.bup_vimrc
echo "The existing .vimrc file was renamed to .bup_vimrc." >> linuxsetup.log
fi
# Redirect the contents of /etc/vimrc to ~/.vimrc
cat ./etc/vimrc > ~/.vimrc
##add statement to the end of .bashrc file
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc
