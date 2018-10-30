#!/bin/bash

setup_dir=$(pwd)
rm -r ~/.vimrc 
rm -r ~/.fonts
rm -r ~/.vim 
rm -r ~/.bashrc
rm -r ~/.bashrc_aliases
rm -r ~/.bashrc_alias_functions
rm -r ~/.dircolors
rm -r ~/.i3

ln -s $(pwd)/.vimrc ~/
ln -s $(pwd)/.fonts ~/
ln -s $(pwd)/.vim ~/
ln -s $(pwd)/.bashrc ~/
ln -s $(pwd)/.bashrc_alias ~/
ln -s $(pwd)/.bashrc_alias ~/
ln -s $(pwd)/.bashrc_alias_functions ~/
ln -s $(pwd)/.fonts ~/
ln -s $(pwd)/.dircolors ~/
ln -s $(pwd)/.i3 ~/
ln -s $(pwd)/../ssh-keys ~/.ssh

cd ~/.vim/
git submodule init
git submodule update

mkdir ~/.tmp

fc-cache -vf ~/.fonts/
