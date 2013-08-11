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

"구문강조 사용 
syntax on
"행 번호 표시 
set nu
set autoindent
set smartindent
set cindent
"괄호반전 
set showmatch
set title
set history=200
set tabstop=4
" 우측 하단 커서 위치 표시 
set ruler 
set langmenu=en
set guifont=Consolas:h14
set mouse=a
set hls 
"하단에 커맨드 표시 
set showcmd 
"현재 사용중인 모드 표시(insert, visual....)
set showmode
"들여쓰기 4칸 
set shiftwidth=4 
"소프트 탭 4칸 
set softtabstop=5 
" 탭 대신 공백문자 사용 
" set expandtab 
" 잘못된 입력일 경우 화면 깜빡이기 
" set visualbell 
" 파일 저장 인코딩
" set fileencoding=utf-8
" 터미널 인코딩 
" set termencoding=utf-8 
" 행 
" set lines=57
" 행 번호 표시 칸 수 
" set numberwidth=5 
" 열
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



