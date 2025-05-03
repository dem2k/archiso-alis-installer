#
# ~/.bashrc
#

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

PS1='[\u@\h \W]\$ '

test -r /usr/share/bash-completion/bash_completion && . /usr/share/bash-completion/bash_completion

# load my aliases
test -f ~/.aliases && source ~/.aliases

export PATH=$HOME/bin:$PATH
# default pager is less.
export PAGER="bat --paging=always"

