#!/bin/bash

# Install my standard packages
#---------------------------------------------------
read -p "Are you sure you want to install a standard packages? (y/n) :" YN
if [ "${YN}" = "y" ]; then
  sudo pacman -S zsh sudo vim firefox rxvt-unicode xterm neovim gvim python3 ranger npm nodejs yarn chromium feh vlc acpi fcitx-im fcitx-configtool fcitx-mozc compton moc 
fi

# ZSHELL
#---------------------------------------------------
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

# Setup dotfiles
#---------------------------------------------------
DOT_FILES=(
  .bashrc
  .bash_profile
  .zshrc
  .vimrc
  .vim
  .xinitrc
  .Xresources
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
  ranger
)

for file in ${CONFIG_DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/dotfiles/.config/$file $HOME/.config/$file
done

# urxvt setup
#---------------------------------------------------
xrdb -m ~/.Xresources


# Develop tools
#---------------------------------------------------
read -p "Are you sure you want to install a standard develop AUR packages? (y/n) :" YN
if [ "${YN}" = "y" ]; then
  yaourt -S gitkraken boostnote tusk postman google-chrome dropbox slack-desktop docker dockstation
fi


sudo pip3 install --upgrade neovim


# Install public ArchLinux package
# if you wanna use my same package, remove comment out
# refere pkg directory file
#---------------------------------------------------
# pacman -S < ~/dotfiles/pkg/pkg.list
