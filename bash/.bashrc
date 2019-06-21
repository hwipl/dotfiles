#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'

alias ll='ls -l'

# prompt
PS1='[\u@\h \W]\$ '

# history
export HISTSIZE=10000
export HISTFILESIZE=10000

# editor
export EDITOR=nvim

# paths
export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin
