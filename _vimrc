set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'neocomplcache'
Bundle 'VimExplorer'
Bundle 'vim-javascript'
Bundle 'MatchTag'
Bundle 'jQuery'
Bundle 'vim-jsbeautify'
Bundle 'csslint.vim'

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

syntax on
set nu
set autoindent
set smartindent
set showmatch
set title
set history=200
set cindent
set tabstop=4
set ruler 
set langmenu=en
set guifont=Consolas:h14
set mouse=a
set hls 
colorscheme BusyBee_uck 
language messages en
"path "
set cd=d:\\cLang

filetype plugin indent on

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd' let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"mapping"

map <F2> :edit $MYVIMRC <CR>
map <F3> :VE <CR> 
map <F4> :BundleList <CR>
map <F5> :BundleSearch <CR>
map <F6> :w<CR> :!python %<CR>[/bash]
