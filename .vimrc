set nocompatible
set ruler
set hlsearch
set incsearch
set smartcase
set ignorecase
set runtimepath+=/usr/local/share/lilypond/2.14.2/vim
set nobackup noswapfile
set cpoptions-=u
set history=100
set ul=1000
set smc=0
set guioptions+=a guioptions-=r guioptions-=T
set guifont=Monaco:h12
set backspace=2
set nosi noai
set pastetoggle=
color torte
"set guifont=Inconsolata:h14
if $TERM == ""
    " Only set if we're not running in an interactive shell.
    set columns=80 lines=37
endif " $TERM
if v:version >= 703
    set colorcolumn=81
endif " v:version >= 703
set mouse=
set formatoptions+=n2
set comments^=fb:* comments+=n:\|
if exists("+transparency")
"    set transparency=10 " 90%
endif " exists("+transparency")

filetype plugin on
filetype indent on
syntax enable

if v:version >= 703
"    color torte 
endif " v:version >= 703

" Make it possible to see edges between editor windows.
hi Normal guibg=Grey8
hi ColorColumn ctermbg=4 guibg=DarkBlue

runtime macros/matchit.vim

set ts=4 sw=4 ta et noai si

if has("autocmd")

    au FileType html,xhtml,css,php,java,javascript setlocal ts=2 sw=2 et
    au BufRead *.jspf setlocal ft=jsp
    au BufRead *.jsx setlocal ft=javascript
    au BufRead *.phpt setlocal ft=php
    au BufRead *.module setlocal ft=php

endif " has("autocmd")

" SQL-Highlighting in PHP-Strings (1=yes 0=no)
let php_sql_query=1
let php_minlines=1200
let php_htmlInStrings=1
