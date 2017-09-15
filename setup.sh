#!/bin/bash

setup_dir=$(pwd)
rm -r ~/.vim
rm ~/.vimrc
rm ~/.bashrc
rm -r ~/.fonts

ln -s $(pwd)/.vimrc ~/
ln -s $(pwd)/.fonts ~/
ln -s $(pwd)/.vim ~/
ln -s $(pwd)/.bashrc ~/
ln -s $(pwd)/.bashrc_aliases ~/
ln -s $(pwd)/.bashrc_alias_functions ~/
ln -s $(pwd)/.fonts ~/
ln -s $(pwd)/.dircolors ~/
ln -s $(pwd)/.tmux.conf ~/

cd ~/.vim/
git submodule init
git submodule update

fc-cache -vf ~/.fonts/
