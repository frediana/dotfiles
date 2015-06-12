set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bundle/ctrlp.vim'
Plugin 'bundle/vim-airline'
Plugin 'bundle/vim-fugitive'

call vundle#end()
filetype plugin indent on

""""""""""""" Airline settings
let g:airline#extensions#tabline#enabled = 1
syntax enable
set background=dark

"""""""""""" General settings
syntax on
filetype plugin indent on

set laststatus=2
set backupdir=~/.tmp
set directory=~/.tmp
" set relativenumber
set gdefault
set autoindent
set shiftround

" Custom key maps
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Remove trailing chars on save
autocmd BufWritePre * :%s/\s\+$//e

" enable highlight search
set viminfo^=h
