# Defaults from zsh menu
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Non defaults
EDITOR=vim

# aliasses
alias ll='ls -latr'
