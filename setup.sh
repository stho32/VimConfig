#!/bin/bash
if [ -f "~/.vim/autoload/plug.vim" ]; then
    echo "  - vim-plug is already installed."
else
    echo "  - vim-plug is not installed yet ... installing ..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "  - copying vimrc file from repository to local user directory"
cp init.vim ~/.vimrc
cp init.vim ~/.config/nvim/init.vim

echo "  - install python3-neovim ..."
sudo apt install python3-neovim

echo "COMPLETE"
echo "dont forget to run :PlugInstall / :PlugUpdate"

