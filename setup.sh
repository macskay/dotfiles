#!/bin/bash

setup_dir=$(pwd)
echo "Lösche alte Verzeichnisse"
echo "sudo rm -r ~/.vim"
rm -r ~/.vim
echo "sudo rm ~/.vimrc"
rm ~/.vimrc
echo "sudo rm ~/.bashrc"
rm ~/.bashrc
echo "sudo rm -r ~/.fonts"
rm -r ~/.fonts
# echo "sudo rm ~/.ideavimrc"
# rm ~/.ideavimrc
echo "Alte Verzeichnisse gelöscht"
echo "==========================="
echo "Lege symbolische Links an"
echo "ln -s ~/Workspace/dotfiles/.vimrc ~/"
ln -s $(pwd)/.vimrc ~/
echo "ln -s ~/Workspace/dotfiles/.fonts ~/"
ln -s $(pwd)/.fonts ~/
echo "ln -s ~/Workspace/dotfiles/.vim ~/"
ln -s $(pwd)/.vim ~/
echo "ln -s ~/Workspace/dotfiles/.bashrc ~/"
ln -s $(pwd)/.bashrc ~/
echo "ln -s ~/Workspace/dotfiles/.bashrc_aliases ~/"
ln -s $(pwd)/.bashrc_aliases ~/
echo "ln -s ~/Workspace/dotfiles/.bashrc_alias_functions ~/"
ln -s $(pwd)/.bashrc_alias_functions ~/
echo "ln -s ~/Workspace/dotfiles/.fonts ~/"
ln -s $(pwd)/.fonts ~/
echo "ln -s ~/Workspace/dotfiles/.dircolors ~/"
ln -s $(pwd)/.dircolors ~/
# echo "Setting up NeoVim"
# ln -s $(pwd)/.vim ~/.config/nvim
echo "Symbolische Links erfolgreich angelegt"
echo "======================================"
echo "Aktualisiere vim-plugins per git submodule"
echo "git submodule init"
cd ~/.vim/
git submodule init
echo "git submodule update"
git submodule update
echo "Alle PlugIns up-to-date"
# echo "Install YouCompleteMe"
# cd ~/.vim/bundle/YouCompleteMe
# git submodule update --init --recursive
# sudo apt-get -y install cmake python-dev python3-dev g++ build-essential neovim
# alias vim=nvim
# ./install.py --clang-completer
echo ".dotfiles erfolgreich importiert"
echo "================================"
echo ".fonts werden aktualisiert, um mit vim-airline zu funktionieren"
echo "fc-cache -vf ~/.fonts/"
fc-cache -vf ~/.fonts/
echo ".fonts aktualisiert!"
# echo "Eigene Skripte verlinken"
# echo "========================"
# echo "Virtual-Env Skript:"
# sudo ln -s $(pwd)/workon.sh /usr/bin/workon
# echo "ln -s $(pwd)/workon.sh /usr/bin/workon"
echo "====================="
echo "| Setup erfolgreich |"
echo "====================="
