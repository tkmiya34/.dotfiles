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

# atom
files=(
  config.cson
  init.coffee
  keymap.cson
  snippets.cson
  styles.less
)
for file in ${files[@]}
do
  if [ -e ~/.atom/${file} ]; then
    rm -rf ~/.atom/${file}
  fi
  ln -s $PWD/atom/${file} ~/.atom/${file}
done
apm install --packages-file $PWD/atom/apmfile
