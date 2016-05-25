#!/bin/bash
#
# To use this script: curl -q luk.ec/setup.sh
#

sudo apt-get install screen vim
if [[ ! -e ~/.screenrc ]]; then
    curl -q luk.ec/env/screenrc >> ~/.screenrc
fi

if [[ ! -e ~/.vimrc ]]; then
    curl -q luk.ec/env/vimrc >> ~/.vimrc
fi

if [[ ! -e ~/.bashrc ]]; then
    curl -q luk.ec/env/bashrc >> ~/.bashrc
fi

if [[ ! -e ~/.aliases ]]; then
    curl -q luk.ec/env/aliases >> ~/.aliases
fi
