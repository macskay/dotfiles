#!/bin/bash

setup_dir=$(pwd)
rm -r ~/.vimrc 
rm -r ~/.fonts
rm -r ~/.vim 
rm -r ~/.bashrc
rm -r ~/.bashrc_aliases
rm -r ~/.bashrc_alias_functions
rm -r ~/.fonts
rm -r ~/.dircolors
rm -r ~/.tmux.conf

ln -s $(pwd)/.vimrc ~/
ln -s $(pwd)/.fonts ~/
ln -s $(pwd)/.vim ~/
ln -s $(pwd)/.bashrc ~/
ln -s $(pwd)/.bashrc_aliases ~/
ln -s $(pwd)/.bashrc_alias_functions ~/
ln -s $(pwd)/.fonts ~/
ln -s $(pwd)/.dircolors ~/
ln -s $(pwd)/.tmux.conf ~/

ln -s $(pwd)/tmux-default.sh /usr/bin/tmux-def

cd ~/.vim/
git submodule init
git submodule update

fc-cache -vf ~/.fonts/
