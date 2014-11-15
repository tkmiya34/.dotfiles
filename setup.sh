#!/bin/bash

# install oh-my-zsh
cd ~/.dotfiles
git submodule init
git submodule update

# create symlink
rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
source ~/.zshrc
