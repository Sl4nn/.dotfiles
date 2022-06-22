# BASICS
source $HOME/.config/zsh/.zprofile

# Sources my autojump
source /etc/profile.d/autojump.sh

setopt autocd
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist
compinit
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000000
SAVEHIST=10000000

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#
# CUSTOM ALIASES

# file management
alias ls="exa --icons"
alias ll="exa -l --icons"
alias la="exa -la --icons"

alias mf="touch"
alias md="mkdir"

# UTILS
alias wp="feh --bg-fill"

# APPLICATION SHORTCUTS
alias v="nvim"

# SYSTEM MAINTANANCE
alias update="sudo pacman -Syyu"
alias cleanup="sudo pacman -Rs \$(pacman -Qdtq)"
alias mirror="sudo reflector -c Germany -a 12 --sort rate --save /etc/pacman.d/mirrorlist"
