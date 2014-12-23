#!/bin/bash

# install oh-my-zsh
cd ~/.dotfiles
git submodule init
git submodule update

# create symlink
rm ~/.zshrc ~/.gitconfig
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
cp ~/.dotfiles/gitconfig.local.sample  ~/.dotfiles/.gitconfig.local