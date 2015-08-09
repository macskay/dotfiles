#!/bin/bash

echo "Lösche alte Verzeichnisse"
echo "sudo rm -r ~/.vim"
sudo rm -r ~/.vim
echo "sudo rm ~/.vimrc"
sudo rm ~/.vimrc
echo "sudo rm ~/.bashrc"
sudo rm ~/.bashrc
echo "sudo rm -r ~/.fonts"
sudo rm -r ~/.fonts
echo "sudo rm ~/.ideavimrc"
sudo rm ~/.ideavimrc
echo "Alte Verzeichnisse gelöscht"
echo "==========================="
echo "Lege symbolische Links an"
echo "ln -s ~/Workspace/dotfiles/.vim ~/"
ln -s $(pwd)/.vimrc ~/
echo "ln -s ~/Workspace/dotfiles/.bashrc ~/"
ln -s $(pwd)/.fonts ~/
echo "ln -s ~/Workspace/dotfiles/.ideavimrc ~/"
ln -s $(pwd)/.vim ~/
echo "ln -s ~/Workspace/dotfiles/.vimrc ~/"
ln -s $(pwd)/.bashrc ~/
echo "ln -s ~/Workspace/dotfiles/.fonts ~/"
ln -s $(pwd)/.ideavimrc ~/
echo "Symbolische Links erfolgreich angelegt"
echo "======================================"
echo "Aktualisiere vim-plugins per git submodule"
echo "git submodule init"
cd ~/.vim/
git submodule init
echo "git submodule update"
git submodule update
echo "Alle PlugIns up-to-date"
echo ".dotfiles erfolgreich importiert"
