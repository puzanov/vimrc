syntax on
"set tabstop=4
"set shiftwidth=2
"set autoindent
set nocompatible
set autochdir
set nowrap
set number
set incsearch
set pastetoggle=<F2>
set laststatus=2
set completeopt+=noinsert
set completeopt+=noselect
"set cursorline

call plug#begin()
Plug 'fatih/vim-go'
Plug 'fatih/molokai'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'vim-airline/vim-airline'
"Plug 'flazz/vim-colorschemes'
Plug 'editorconfig/editorconfig-vim'
Plug 'majutsushi/tagbar'
call plug#end()

map <C-n> :NERDTreeToggle<CR>

let g:deoplete#enable_at_startup = 1
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

set backspace=indent,eol,start
