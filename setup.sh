#!/bin/bash

# oh-my-zsh
git submodule init
git submodule update
files=(
  zshrc
)
for file in ${files[@]}
do
  if [ -e ~/.${file} ]; then
    rm -rf ~/.${file}
  fi
  ln -s $PWD/zsh/${file} ~/.${file}
done


# git
files=(
  gitconfig
  gitignore
)
for file in ${files[@]}
do
  if [ -e ~/.${file} ]; then
    rm -rf ~/.${file}
  fi
  ln -s $PWD/git/${file} ~/.${file}
done
