#!/bin/bash

# Install my standard packages
#---------------------------------------------------
pacman -S zsh sudo vim firefox rxvt-unicode xterm neovim gvim python3 ranger sudo pacman -S npm nodejs yarn chromium feh vlc acpi fcitx-im fcitx-configtool fcitx-mozc

# ZSHELL
#---------------------------------------------------
chsh -s /bin/zsh
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


# Install Package Query & Yaourt
#---------------------------------------------------
curl -OL https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
tar zxf package-query.tar.gz
cd package-query
makepkg -si
cd ../
curl -OL https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
tar zxf yaourt-1.5.tar.gz
cd yaourt
makepkg -si
cd ../
rm -r package-query yaourt

# Develop tools
#---------------------------------------------------
yaourt -S gitkraken boostnote tusk postman google-chrome dropbox slack-desktop docker dockstation


sudo pip3 install --upgrade neovim


# Install public ArchLinux package
# if you wanna use my same package, remove comment out
# refere pkg directory file
#---------------------------------------------------
# pacman -S < ~/dotfiles/pkg/pkg.list
