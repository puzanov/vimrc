:syntax on
:set nocompatible
:set tabstop=2
:set expandtab
:set shiftwidth=2
:set autoindent
:set autochdir
:set tags+=/home/oleg/tags
:set number
:set incsearch
:set pastetoggle=<F2>
nmap <F3> :NERDTreeToggle <CR>

imap <C-e> <Esc>\be                                                                                                                     
nmap <C-e> \be

nnoremap <F4> :TlistToggle<CR>
let Tlist_Show_One_File=1
let tlist_php_settings='php;c:class;f:function'
let Tlist_Sort_Type = 'name'

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

let php_sql_query=1                                                                                        
let php_htmlInStrings=1

if &term =~ "xterm"
  "256 color --
  let &t_Co=256
  "restore screen after quitting
  set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
  if has("terminfo")
    let &t_Sf="\ESC[3%p1%dm"
    let &t_Sb="\ESC[4%p1%dm"
  else
    let &t_Sf="\ESC[3%dm"
    let &t_Sb="\ESC[4%dm"
  endif
endif
colors wombat256mod
set cursorline
set backupdir=/tmp
set directory=/tmp
set nobackup 
set noswapfile 
set backupdir=~/.vim/.tmp,~/tmp,/tmp 
set directory=~/.vim/.tmp,~/tmp,/tmp 
set history=1000 "store lots of :cmdline history
set ruler "show the line and column number of the cursor position
set showcmd "show incomplete cmds down the bottom
set showmode "show current mode down the bottom set hidden "hide buffers when not displayed
set cmdheight=2 "set status bar height
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set virtualedit=all "move to the last character in the line, not past it

"setup incremental search settings
set incsearch "find the next match as we type the search
set hlsearch "highlight searches by default
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,
