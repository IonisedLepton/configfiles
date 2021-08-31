#!/bin/bash

set -e

cd ~
rm -rf ~/.vim/pack/tpope/start/commentary.git
git clone https://tpope.io/vim/commentary.git ~/.vim/pack/tpope/start/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q

