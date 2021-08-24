#!/bin/sh

ln -sr .vimrc $HOME/.vimrc
ln -sr .tmux.conf $HOME/.tmux.conf
ln -sr .bash_aliases $HOME/.bash_aliases

GIT_BRANCH_NAME=$1

git checkout -b $GIT_BRANCH_NAME

