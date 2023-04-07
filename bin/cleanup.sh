#!/bin/bash

## Removes .vimrc file from home directory
rm -f ~/.vimrc
## Remove the line 'source ~/.dotfiles/etc/bashrc custom' from .bashrc file using the sed command
sed -i 's/source \~\/\.dotfiles\/bashrc_custom//g' ~/.bashrc
## Remove the .TRASH directory
rm -rf ~/.TRASH
