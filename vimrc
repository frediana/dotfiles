"""""""""""""" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'

Bundle 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

"""""""""""""" solarized
let &t_Co=256
set background=dark
colorscheme solarized

""""""""""""" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

:set smartcase
:set ignorecase
:set noantialias

"""""""""""" General settings
filetype plugin on
filetype plugin indent on

syntax on
set encoding=utf-8
set nocompatible

set report=0
set laststatus=2
set foldmethod=marker
set wildmenu

set backupdir=~/.vim/backup
set directory=~/.vim/backup
" set relativenumber
set gdefault
set autoindent
set shiftround

""""""""""""" Custom key maps

" move to left buffer
map  <C-Left>   <C-w><Left>
map! <C-Left>   <Esc> <C-w><Left>
" move to right buffer
map  <C-Right>  <C-w><Right>
map! <C-Right>  <Esc> <C-w><Right>
" move to buffer above
map  <C-Up>     <C-w><Up>
map! <C-Up>     <Esc> <C-w><Up>
" move to buffer below
map  <C-Down>   <C-w><Down>
map! <C-Down>   <Esc> <C-w><Down>

map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Leader commands
:let mapleader = ","
nnoremap <leader>. :CtrlPTag<cr>
" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $MYVIMRC

" Remove trailing chars on save
autocmd BufWritePre * :%s/\s\+$//e

" enable highlight search
set viminfo^=h
