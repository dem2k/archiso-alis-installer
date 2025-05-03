# default pager is less.
export PAGER="bat --paging=always"
export EDITOR='nano'

# CTRL-BKSP kill word to the left.
bindkey '^H' backward-kill-word

# load my aliases
test -f ~/.aliases && source ~/.aliases

