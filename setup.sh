#!/bin/bash

ln -s ~/Workspace/dotfiles/.vim ~/
ln -s ~/Workspace/dotfiles/.vimrc ~/
ln -s ~/Workspace/dotfiles/.bashrc ~/
ln -s ~/Workspace/dotfiles/.fonts ~/
ln -s ~/Workspace/dotfiles/.ideavimrc ~/
cd ~/.vim/
git submodule init
git submodule update
