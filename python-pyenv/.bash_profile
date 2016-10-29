# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

TERM=xterm-256color
PATH=$PATH:~/bin

alias mc=". /usr/lib/mc/mc-wrapper.sh"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

