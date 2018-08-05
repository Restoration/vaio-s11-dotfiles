#
# ~/.zsh
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[%n@%m %1~]%(!.#.$) '

export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

export GEM_HOME=$(ruby -e 'print Gem.user_dir')


