#!/bin/bash

set -e
# NERDTree settings:
SPECS=\
"map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
"

cd ~

# Clean and Install
rm -rf ~/.vim/pack/vendor/start/nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

NERDTREE_SETTINGS_FILE="$HOME/.vim/nerdtree_settings.vim"
rm -f $NERDTREE_SETTINGS_FILE
touch $NERDTREE_SETTINGS_FILE

cat << EOF >> $NERDTREE_SETTINGS_FILE
$SPECS
EOF

NERDTREE_IN_VIMRC="source $NERDTREE_SETTINGS_FILE"
if ! grep -q "$NERDTREE_IN_VIMRC" .vimrc; then
	echo "$NERDTREE_IN_VIMRC" >> .vimrc
fi
