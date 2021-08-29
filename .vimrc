" vim version: 8.2

" My Plugins:
"" morhetz/gruvbox
"" airblade/vim-gitgutter
"" HerringtonDarkholme/yats.vim
"" neoclide/coc.nvim

" let $VIMRUNTIME="~/bin/share/vim/vim82"

syntax on
set number

" for retaining colorscheme when using tmux vs regular terminal emulator
if &term == 'xterm' " terminal (putty)
    set termguicolors
elseif &term == 'xterm-256color' " tmux
    set t_ut=
    set notermguicolors
endif

" for plugins to load correctly
filetype plugin indent on

" leader key
let mapleader=","


" whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set expandtab  Makefile complains
set noshiftround

" make backspace work
set backspace=indent,eol,start

" rendering
set ttyfast

" show file stats
set ruler

" Encoding
set encoding=utf-8

" status bar
set laststatus=2

" last line
set showmode
set showcmd

" search
set hlsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

"remap Esc to jk
inoremap jk <ESC>

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX
"check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)
if (empty($TMUX))
  if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198
	  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	  endif
	  "For Neovim > 0.1.5 and Vim > patch 7.4.1799
	  "https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
	  
	  "Based on Vim patch 7.4.1770 (`guicolors` option)
	  "https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
	  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511	  
	  if (has("termguicolors"))
		set termguicolors
	  endif
endif


"" colorscheme: gruvbox
"colorscheme gruvbox
"
"set background=dark
"let g:gruvbox_hls_cursor='orange'
"
"" vim-gitgutter
"let g:gitgutter_enabled=1
"set updatetime=100
"
"" yats
"let g:yats_host_keyword = 1
"set re=0
"
"" show file stats
"set ruler
"
"" Encoding
"set encoding=utf-8
"
"" status bar
"set laststatus=2
"
"" last line
"set showmode
"set showcmd
"
"" search
"set hlsearch
"set ignorecase
"set smartcase
"set showmatch
"map <leader><space> :let @/=''<cr> " clear search
"
"inoremap jk <ESC>
"
"" settings for coc
""" TextEdit might fail if hidden is not set
"set hidden
""" reduce updatetime
"set updatetime=3000 
""" give more space for displaying messages
"set cmdheight=2
""" Don't pass messages to |ins-completion-menu|.
"set shortmess+=c
"
""" Always show the signcolumn, otherwise it would shift the text each time
""" diagnostics appear/become resolved.
"if has("patch-8.1.1564")
"""" Recently vim can merge signcolumn and number column into one
"  set signcolumn=number
"else
"  set signcolumn=yes
"endif
"
""" Use tab for trigger completion with characters ahead and navigate.
""" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
""" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
""" Use <c-space> to trigger completion.
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif
"
""" Make <CR> auto-select the first completion item and notify coc.nvim to
""" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
""" Use `[g` and `]g` to navigate diagnostics
""" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
""" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
""" Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  elseif (coc#rpc#ready())
"    call CocActionAsync('doHover')
"  else
"    execute '!' . &keywordprg . " " . expand('<cword>')
"  endif
"endfunction
"
""" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
""" Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)
"
""" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"
"augroup mygroup
"  autocmd!
" """ " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" """ " Update signature help on jump placeholder.
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"
""" Applying codeAction to the selected region.
""" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"
""" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
""" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)
"
""" Map function and class text objects
""" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)
"
""" Remap <C-f> and <C-b> for scroll float windows/popups.
"if has('nvim-0.4.0') || has('patch-8.2.0750')
"  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"endif
"
""" Use CTRL-S for selections ranges.
""" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)
"
""" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocAction('format')
"
""" Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
""" Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
