#!/bin/bash

set -e

cd ~/.vim
rm -f open_file_under_cursor.vim
wget https://raw.githubusercontent.com/amix/open_file_under_cursor.vim/master/plugin/open_file_under_cursor.vim

cd ~

SOURCE_IN_VIMRC="source ~/.vim/open_file_under_cursor.vim"
if ! grep -q "$SOURCE_IN_VIMRC" .vimrc; then
	echo "$SOURCE_IN_VIMRC" >> .vimrc
fi
