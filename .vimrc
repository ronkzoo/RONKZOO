" vundle config
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html 
Plugin 'L9'
" Git plugin not hosted on GitHub 
Plugin 'git://git.wincent.com/command-t.git'


" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'


" The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'The-NERD-tree'
Plugin 'javascript.vim'
Plugin 'perl-support.vim'
Plugin 'surround.vim'
" Avoid a name conflict with L9

call vundle#end()
filetype plugin indent on

"
" default config
"
set nu
set tabstop=4
set ts=4
set sw=4
set sts=4
set mouse=a 
set smartindent 
set cindent
color desert 
syn on 
set noantialias 

