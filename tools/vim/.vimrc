" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)                          
call plug#begin('~/.vim/plugged')

Plug 'Shougo/neocomplcache'
Plug 'scrooloose/nerdtree'
map <F5> :NERDTreeToggle<CR>

call plug#end()

let g:neocomplcache_enable_at_startup = 1 
let g:neocomplcache_enable_smart_case = 1 
inoremap <expr><TAB> pumvisible()?"\<C-n>" : "\<TAB>"

syntax on
set number
set cursorline
colorscheme default
set bg=dark
set tabstop=4
set expandtab
set shiftwidth=4
set ai
set hlsearch
set smartindent
map <F4> : set nu!<BAR>set nonu?<CR>

" autocomplete dropdown list colorscheme
hi Pmenu ctermfg=0 ctermbg=7 
hi PmenuSel ctermfg=7 ctermbg=4