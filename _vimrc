let g:Powerline_symbols = 'fancy'

set nocompatible
filetype off 
"Setting for Python" 
"
" --setting vim-powerline
set laststatus=2

" -- ctrlp setting
"cd ~/.vim/bundle 
"git clone https://github.com/kien/ctrlp.vim.git 
let g:ctrlp_max_height=30


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set nocompatible
filetype off 

"Setting for Python" 
"
" --setting vim-powerline
set laststatus=2

" -- ctrlp setting
"cd ~/.vim/bundle 
"git clone https://github.com/kien/ctrlp.vim.git 
let g:ctrlp_max_height=30


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'VimExplorer'
Bundle 'vim-javascript'
Bundle 'MatchTag'
Bundle 'jQuery'
Bundle 'vim-jsbeautify'
Bundle 'csslint.vim'

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"�������� ��� 
syntax on
"�� ��ȣ ǥ�� 
set nu
set autoindent
set smartindent
set cindent
"��ȣ���� 
set showmatch
set title
set history=200
set tabstop=4
" ���� �ϴ� Ŀ�� ��ġ ǥ�� 
set ruler 
set langmenu=en
set guifont=Consolas:h14
set mouse=a
set hls 
"�ϴܿ� Ŀ�ǵ� ǥ�� 
set showcmd 
"���� ������� ��� ǥ��(insert, visual....)
set showmode
"�鿩���� 4ĭ 
set shiftwidth=4 
"����Ʈ �� 4ĭ 
set softtabstop=5 
" �� ��� ���鹮�� ��� 
" set expandtab 
" �߸��� �Է��� ��� ȭ�� �����̱� 
" set visualbell 
" ���� ���� ���ڵ�
" set fileencoding=utf-8
" �͹̳� ���ڵ� 
" set termencoding=utf-8 
" �� 
" set lines=57
" �� ��ȣ ǥ�� ĭ �� 
" set numberwidth=5 
" ��
" set columns=85 
"
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



