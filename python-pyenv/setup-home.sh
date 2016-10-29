#!/bin/bash

export TERM=xterm 
#git clone https://github.com/yyuu/pyenv.git .pyenv

yaourt -S pyenv --noconfirm --needed

echo 'export TERM=xterm' >> ~/.bash_profile

pyenv init
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# exec "$SHELL"
