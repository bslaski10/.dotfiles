#!/bin/bash

## Removes .vimrc file from home directory
rm -f ~/.vimrc
## Removes the line 'source ~/.dotfiles/etc/bashrc custom' from .bashrc file
sed -i 's/source \~\/\.dotfiles\/bashrc_custom//g' ~/.bashrc
## Removes the .TRASH directory from home directory
rm -rf ~/.TRASH
