#!/bin/bash
echo "Hello lukec, good to see you.  Setting up your machine...";

sudo apt-get install screen
curl -q luk.ec/env/screenrc >> ~/.screenrc
curl -q luk.ec/env/vimrc >> ~/.vimrc
