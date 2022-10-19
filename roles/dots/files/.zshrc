# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Defaults from zsh menu
# Lines configured by zsh-newuser-install
autoload -Uz compinit
compinit

autoload bashcompinit && bashcompinit

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

# Variables
EDITOR=nvim

# Make sure Terragrunt does not download to the local directory but to temp
export TERRAGRUNT_DOWNLOAD=/tmp/terragrunt

# Aliasses
alias ll='ls -latr'
alias v='vim'
alias r='ranger'
alias gss='git status --short'
alias data='cd /mnt/c/data'
alias tf="terraform"
alias kdump='kubectl get all --all-namespaces'

alias taa='terraform apply -auto-approve'
alias tda='terraform destroy -auto-approve'
alias tp='terraform plan'
alias ti='terraform init'
alias tgp='terragrunt plan --terragrunt-download-dir /tmp/terragrunt'
alias tgpa='terragrunt run-all plan --terragrunt-download-dir /tmp/terragrunt'
alias tga='terragrunt apply --terragrunt-download-dir /tmp/terragrunt'
alias tgaa='terragrunt run-all apply--terragrunt-download-dir /tmp/terragrunt'

alias projects='cd ${HOME}/projects'

# Make completion:
# - Case-insensitive.
# - Accept abbreviations after . or _ or - (ie. f.b -> foo.bar).
# - Substring complete (ie. bar -> foobar).
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Colorize completions using default `ls` colors.
zstyle ':completion:*' list-colors ''

#
# Correction
#

# exceptions to auto-correction
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias sudo='nocorrect sudo'
alias go='nocorrect go'


#
# History
#

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

#
# Options
#

setopt autocd               # .. is shortcut for cd .. (etc)
setopt autoparamslash       # tab completing directory appends a slash
setopt autopushd            # cd automatically pushes old dir onto dir stack
setopt clobber              # allow clobbering with >, no need to use >!
setopt correct              # command auto-correction
setopt correctall           # argument auto-correction
setopt noflowcontrol        # disable start (C-s) and stop (C-q) characters
setopt nonomatch            # unmatched patterns are left unchanged
setopt histignorealldups    # filter duplicates from history
setopt histignorespace      # don't record commands starting with a space
setopt histverify           # confirm history expansion (!$, !!, !foo)
setopt ignoreeof            # prevent accidental C-d from exiting shell
setopt interactivecomments  # allow comments, even in interactive shells
setopt printexitvalue       # for non-zero exit status
setopt pushdignoredups      # don't push multiple copies of same dir onto stack
setopt pushdsilent          # don't print dir stack after pushing/popping
setopt sharehistory         # share history across shells
setopt rmstarsilent         # don't confirm rm *

# Replace standard history-incremental-search-{backward,forward} bindings.
# These are the same but permit patterns (eg. a*b) to be used.
bindkey "^r" history-incremental-pattern-search-backward
bindkey "^s" history-incremental-pattern-search-forward

# Make CTRL-Z background things and unbackground them.
function fg-bg() {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
  else
    zle push-input
  fi
}
zle -N fg-bg
bindkey '^Z' fg-bg

# Prompt
HOSTNAME=$(hostname -s)

function precmd {
    # Inspiration for later maybe
    #PROMPT="%{$fg[green]%}%c $(git_super_status)%{$fg[red]%}~%{$fg[white]%}? %{$reset_color%}"
    PROMPT="${USER}@${HOSTNAME}: $(pwd) $ "
}

# Add secrets if present
if [[ -f ~/.secrets ]]; then
  source ~/.secrets
fi

# Set locale for Flask development
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

# Go
GOPATH=/mnt/c/data/go
GOBIN=/mnt/c/data/go/bin
GOFLAGS=-mod=vendor
PATH=/home/bas/bin:/usr/local/go/bin:${PATH}:${GOBIN}

export PATH
export GOPATH
export GOBIN

# Steam
export DISTRIB_ID=arch
export DISTRIB_RELEASE=$(uname -r)

# Kubernetes
source <(kubectl completion zsh)

export EDITOR=vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load some secrets
# source ~/.buildvars
[[ ! -f ~/.tfvars ]] || source ~/.tfvars
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Go
# GOPATH=/home/bas/dev/go
# GOBIN=/home/bas/dev/go/bin
# PATH=${PATH}:${GOBIN}:/usr/local/go/bin

export PATH
export GOPATH
export GOBIN

alias go="nocorrect go"
# K8S
source <(kubectl completion zsh)
alias k=kubectl
# complete -F __start_kubectl k

# Docker compose
PATH=${PATH}:/home/bas/.local/bin
export PATH

# Java
PATH=/usr/local/java/bin:${PATH}
export PATH

# Alias for dockerd
alias start-docker='nohup sudo -b dockerd < /dev/null > /var/log/dockerd.log 2>&1'

# Add tfenv
PATH=${HOME}/tfenv/bin:${PATH}

# Neovim era
alias vim=nvim

# Go
source /etc/profile.d/golang.sh

# Add scripts dir
PATH=${HOME}/bin/scripts:${PATH}

# tmux-sessionizer binding
bindkey -s '^f' "tmux-sessionizer\n"

# Rust
PATH=${HOME}/.cargo/bin:${PATH}
