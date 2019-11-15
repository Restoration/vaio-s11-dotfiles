#!/bin/bash

# Install my standard packages
#---------------------------------------------------
read -p "Are you sure you want to install a standard packages? (y/n) :" YN
if [ "${YN}" = "y" ]; then
  sudo pacman -S zsh sudo vim firefox rxvt-unicode xterm neovim gvim python3 ranger npm nodejs yarn chromium feh vlc acpi fcitx-im fcitx-configtool fcitx-mozc compton moc otf-ipafont ttf-hack ttf-liberation conky python-pip xbacklight
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
ln -s $HOME/dotfiles/dotfiles/.config/awesome $HOME/.config/awesome
ln -s $HOME/dotfiles/dotfiles/.config/nvim $HOME/.config/nvim
ln -s $HOME/dotfiles/dotfiles/.config/ranger $HOME/.config/ranger

# urxvt setup
#---------------------------------------------------
xrdb -m ~/.Xresources

# Install yay package manager
#---------------------------------------------------
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../
rm -r yay

# Develop tools
#---------------------------------------------------
read -p "Are you sure you want to install a standard develop AUR packages? (y/n) :" YN
if [ "${YN}" = "y" ]; then
  yay -S gitkraken boostnote tusk postman google-chrome dropbox slack-desktop docker dockstation
fi

sudo pip3 install --upgrade neovim
