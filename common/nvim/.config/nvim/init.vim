call plug#begin('~/.local/share/nvim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'mike-hearn/base16-vim-lightline'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'frazrepo/vim-rainbow'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'

call plug#end()

colorscheme base16-default-dark
let g:lightline = {
      \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
        \ },
      \ 'component': {
      	\ 'lineinfo': '%3l:%-2v%<',
      	\ },
			\ 'colorscheme': 'base16_default_dark'
      \ }

set ts=2 sw=2 et
set termguicolors
set guicursor=
set noshowmode

filetype plugin on
au FileType c,cpp,objc,objcpp call rainbow#load()
map ; :Files<CR>
