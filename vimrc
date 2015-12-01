" Vundle repositories {{{

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Bundle 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
Bundle 'scrooloose/syntastic'
Bundle 'ternjs/tern_for_vim'
call vundle#end()
filetype plugin indent on

" }}}
" Ctrlp {{{

let g:ctrlp_regexp = 1

let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

" }}}
" Airline {{{

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

" }}}
" Syntastic {{{

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_javascript_checkers = ['tsc', 'jsonlint']

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
" Keyboard shortcuts {{{

map  <C-Left>   <C-w><Left>
map! <C-Left>   <Esc> <C-w><Left>
map  <C-Right>  <C-w><Right>
map! <C-Right>  <Esc> <C-w><Right>
map  <C-Up>     <C-w><Up>
map! <C-Up>     <Esc> <C-w><Up>
map  <C-Down>   <C-w><Down>
map! <C-Down>   <Esc> <C-w><Down>

map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

nnoremap j gj
nnoremap k gk

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" }}}
" Leader {{{

:let mapleader = "\<Space>"
:nmap <Leader>v :e $MYVIMRC
:nmap <Leader>s :source $MYVIMRC
:nmap <Leader><Space> :noh<CR>

map <Leader>w :w<cr>
map <Leader>q :q<cr>
map <Leader>vs :vsp<cr>

map <Leader><Tab> :bnext<cr>

map <Leader>b :make<cr>

map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

" }}}
" Backups {{{

set backupdir-=.
set backupdir=~/.vim/backup
set directory=~/.vim/backup
set undofile
set undodir=~/.vim/undo,.
au BufWritePre tmp* setl noundofile

" }}}
" Misc {{{

set wildignore+=*/tmp/*,*/javascript.compressed/*,*/ext/*
set wildignore+=*.so,*.swp,*.zip*,*.blk,*.c,*.h

set statusline+=%#warningmsg#
set statusline+=%*

syntax enable
colorscheme solarized
set background=dark

set encoding=utf-8
set foldmethod=marker

autocmd BufWritePre * :%s/\s\+$//e

" disable splash
set shortmess+=I

set ignorecase
set smartcase

setlocal spell

set grepprg=ag

set listchars=eol:\ ,tab:\ \ ,trail:-,extends:>,precedes:<,nbsp:¤

set backspace=indent,eol,start

autocmd FileType * setlocal formatoptions-=r formatoptions-=o

" }}}
