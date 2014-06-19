set nocompatible
set tabstop=4
set backspace=2
set shiftwidth=4
set background=dark  " No white terminals allowed
set autoindent
set smartindent
set nohls
set number  " Line numbers
syntax on

set runtimepath=~/.vim,$VIMRUNTIME

map <C-A> 1G=G

" F2 copies to clipboard, F3 pastes from clipboard
map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

" F10 enables paste mode. Doesn't reformat when pasting using mouse
set pastetoggle=<F10>
