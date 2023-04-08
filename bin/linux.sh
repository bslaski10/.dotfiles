#!/bin/bash

##checks if operating system is Linux then prints an error if it isn't
if [ "$(uname)" != "Linux" ]; then
echo "Error this script can only be run on a linux system." >> linuxsetup.log
exit
fi
## Creates the .TRASH directory in home directory if it doesn't exist
mkdir -p ~/.TRASH
## Backs up the .vimrc file if it exists renaming it to .bup_vimrc
if [ -f ~/.vimrc ]; then
mv ~/.vimrc ~/.bup_vimrc
echo "The existing .vimrc file was renamed to .bup_vimrc." >> linuxsetup.log
fi
## Redirect the contents of /etc/vimrc to .vimrc in home directory
cat ./etc/vimrc > ~/.vimrc
##adds source ~/.dotfiles/etc/bashrc_custom to the end of .bashrc file
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc
