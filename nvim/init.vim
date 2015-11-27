syntax enable
filetype plugin indent on

" Vundle repositories {{{

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Bundle 'altercation/vim-colors-solarized'

call vundle#end()

" }}}
" Ctrlp {{{


let g:ctrlp_use_caching = 1
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

let g:ctrlp_regexp = 1

" }}}
" Code Formatting {{{

set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
au filetype javascript setlocal sw=4 ts=4 et

" }}}
" Visual customizations {{{

set colorcolumn=80
set relativenumber
set ruler
set cursorline
set title
set titlestring=%t
hi ColorColumn ctermbg=blue

" }}}
" Leader {{{

:let mapleader = "\<Space>"
:nmap <Leader>v :e $MYVIMRC
:nmap <Leader>s :source $MYVIMRC
:nmap <Leader><Space> :noh<CR>

" }}}
" Backups {{{

set backupdir-=.
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" }}}
" Misc {{{

set wildignore+=*/tmp/*,*/javascript.compressed/*,*/ext/*
set wildignore+=*.so,*.swp,*.zip*,*.blk,*.c,*.h

set statusline+=%#warningmsg#
set statusline+=%*

colorscheme solarized
set background=dark

set encoding=utf-8
set foldmethod=marker

autocmd BufWritePre * :%s/\s\+$//e
" }}}
