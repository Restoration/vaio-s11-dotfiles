#!/bin/bash

# Setup dotfiles
#---------------------------------------------------
DOT_FILES=(
  .bashrc 
  .bash_profile 
  .zshrc
  .vimrc 
  .vim 
  .xinitrc
)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done


mkdir -p $HOME/.config

CONFIG_DOT_FILES=(
  awesome
  nvim
  roxterm.sourceforge.net
  ranger
)

for file in ${CONFIG_DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/.config/$file $HOME/.config/$file
done

