#!/bin/bash

export TERM=xterm 
#git clone https://github.com/yyuu/pyenv.git .pyenv

yaourt -S pyenv --noconfirm --needed


pyenv init
git clone https://github.com/yyuu/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv

# exec "$SHELL"
# TERM=xterm-256color
echo 'PATH=$PATH:~/bin'  >> $HOME/.bashrc
echo 'alias mc=". /usr/lib/mc/mc-wrapper.sh"' >> $HOME/.bashrc
echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> $HOME/.bashrc
echo 'export TERM=xterm' >> $HOME/.bashrc

