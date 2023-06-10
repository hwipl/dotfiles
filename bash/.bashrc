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
export EDITOR=vim

# paths
export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/go/bin

# powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
