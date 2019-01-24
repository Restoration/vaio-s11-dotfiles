#!/bin/bash

# Get packages
#---------------------------------------------------
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup dotfiles
#---------------------------------------------------
DOT_FILES=(
  .bashrc
  .bash_profile
  .zshrc
  .vimrc
  .vim
  .xinitrc
  .Xdefaults
  .tmux.conf
  .fehbg
  .conkyrc
)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/dotfiles/$file $HOME/$file
done


mkdir -p $HOME/.config

CONFIG_DOT_FILES=(
  awesome
  nvim
  roxterm.sourceforge.net
  ranger
  i3
)

for file in ${CONFIG_DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/dotfiles/.config/$file $HOME/.config/$file
done


# Install dein
#---------------------------------------------------
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
mkdir -p $HOME/.vim/dein
sh installer.sh $HOME/.vim/dein
rm installer.sh


# urxvt setup
#---------------------------------------------------
xrdb -m ~/.Xdefaults

# Change my default shell for zsh
#---------------------------------------------------
# chsh -s /bin/zsh

# The Ultimate Vim configuration Awesome version
#---------------------------------------------------
# git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime

# Install public ArchLinux package
# if you wanna use my same package, remove comment out
# refere pkg directory file
#---------------------------------------------------
# pacman -S < ~/dotfiles/pkg/pkg.list


# Install on Node package manager
#---------------------------------------------------
# sudo npm install -g eslint eslint-plugin-vue
