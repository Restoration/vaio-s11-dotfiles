#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Ruby setting
#export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
#export GEM_HOME=$(ruby -e 'print Gem.user_dir')

# Laravel
export PATH="~/.config/composer/vendor/bin:$PATH"

#export VISUAL="nvim"


# My aliases
alias p="sudo pacman "
alias mix="alsamixer"
alias dis="xbacklight -set"
alias v="vim"
alias r="ranger"
alias g="git"
