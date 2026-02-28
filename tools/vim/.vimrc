" - plugins to use
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'Shougo/neocomplcache'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'	" mark the whitespace at the end of any line
Plug 'tpope/vim-fugitive'               " Fugitive is the premier Vim plugin for Git.

" Code high light
Plug 'gregsexton/MatchTag'		" highlight the same pair of html tag
Plug 'ap/vim-css-color'			" highlight with the color of color code in css file
" Color theme
Plug 'morhetz/gruvbox'

" Code snippet Generator
Plug 'marcweber/vim-addon-mw-utils' " dependencies for vim-snipmate
Plug 'garbas/vim-snipmate'      " SnipMate aims to provide support for textual snippets, similar to TextMate or other Vim plugins like UltiSnips.
Plug 'honza/vim-snippets'       " This repository contains snippets files for various programming languages.

call plug#end()

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
inoremap <expr><TAB> pumvisible()?"\<C-n>" : "\<TAB>"

" Show Hidden files
let NERDTreeShowHidden=1

syntax on
set number
set cursorline
set tabstop=4
set expandtab
set shiftwidth=4
set ai
set hlsearch
set noswapfile
set path+=**        " - finding files
set noswapfile
set nowrap			" do not wrap the long string
"set mouse=a			" let mouse control enable
set clipboard=unnamed " let vim clipboard and system clipboard sync (if vim compile with clipboard enable)
set noeb " 關閉嗶嗶聲。
map <F4> : set nu!<BAR>set nonu?<CR>
map <F5> :NERDTreeToggle<CR>

"- tag jumping

"- autocomplete
"- file browsing
"- snippets
"- build integration
"- questions

"color scheme theme
autocmd vimenter * ++nested colorscheme gruvbox

set background=dark    " Setting dark mode
"set background=light   " Setting light mode

" autocomplete dropdown list colorscheme
hi Pmenu ctermfg=0 ctermbg=7
hi PmenuSel ctermfg=7 ctermbg=4

nnoremap <F2> :StripWhitespace<CR>	" use <F2> to clean the whitespace at the end of any line
