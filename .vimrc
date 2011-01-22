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

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

let php_sql_query=1                                                                                        
let php_htmlInStrings=1

if &term =~ "xterm"
  "256 color --
  let &t_Co=256
  " restore screen after quitting
  set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
  if has("terminfo")
    let &t_Sf="\ESC[3%p1%dm"
    let &t_Sb="\ESC[4%p1%dm"
  else
    let &t_Sf="\ESC[3%dm"
    let &t_Sb="\ESC[4%dm"
  endif
endif

:colors molokai
