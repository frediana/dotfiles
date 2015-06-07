set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bundle/ctrlp.vim'
Plugin 'bundle/vim-airline'
Plugin 'bundle/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()
syntax on
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:airline#extensions#tabline#enabled = 1
syntax enable
set background=dark

set laststatus=2

" enable highlight search 
set viminfo^=h
