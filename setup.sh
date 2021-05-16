#!/bin/bash
if [ -f "~/.vim/autoload/plug.vim" ]; then
    echo "  - vim-plug is already installed."
else
    echo "  - vim-plug is not installed yet ... installing ..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "  - copying vimrc file from repository to local user directory"
cp .vimrc ~/.vimrc

echo "COMPLETE"
echo "dont forget to run :PlugInstall / :PlugUpdate"
