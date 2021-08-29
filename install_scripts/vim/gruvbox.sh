#!/bin/bash

set -e
# Gruvbox settings:
specs=\
"set background=dark
let g:gruvbox_hls_cursor='orange'
"

cd ~

rm -rf ~/.vim/pack/default/start/gruvbox
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

GRUVBOX=".vim/gruvbox_settings.vim"
rm -f $GRUVBOX
touch $GRUVBOX
cat << EOF >> $GRUVBOX
autocmd vimenter * ++nested colorscheme gruvbox
$specs
EOF

GRUVBOX_IN_VIMRC="source ~/.vim/gruvbox_settings.vim"
if ! grep -q "$GRUVBOX_IN_VIMRC" .vimrc; then
	echo "$GRUVBOX_IN_VIMRC" >> .vimrc
fi
