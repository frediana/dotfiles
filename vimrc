"Vundle {{{

" required by Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'groenewege/vim-less'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-distinguished'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Bundle 'scrooloose/syntastic'

call vundle#end()

" }}}
" Colors & Theming {{{
let &t_Co=256
set background=dark
colorscheme distinguished

" }}}
" Airline {{{

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
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
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

:set ignorecase
:set noantialias

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

let g:syntastic_javascript_checkers = ['jshint']

" }}}
" ctl-p {{{

set wildignore+=*/tmp/*,*/javascript.compressed/*,*/ext/*
set wildignore+=*.so,*.swp,*.zip*,*.blk,*.c,*.h

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ctrlp_use_caching = 1
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

let g:ctrlp_regexp = 1

" }}}
" Ultisnips {{{

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" }}}
" Global Settings {{{

filetype plugin on
filetype plugin indent on

syntax on

set autoread

set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set colorcolumn=80

set incsearch
set hlsearch

set autoindent
set hidden
set esckeys
set listchars=eol:\ ,tab:\ \ ,trail:-,extends:>,precedes:<,nbsp:¤
set list

set ruler
set modeline
set modelines=5
set foldmethod=marker
set lazyredraw
set relativenumber

set report=0
set laststatus=2
set wildmenu

set backupdir=~/.vim/backup
set directory=~/.vim/backup
set gdefault
set shiftround

" Use Silver Searcher instead of grep
set grepprg=ag

" When at 3 spaces and I hit >>, go to 4, not 5.
set shiftround

" (Hopefully) removes the delay when hitting esc in insert mode
set ttimeout
set ttimeoutlen=100
set timeoutlen=5000

" Undo and tags {{{1
set cpoptions-=C
set tags=tags;/,.tags;/,TAG;/
if version >= 703
    set undofile                          " to activate undofile feature
    set undodir=~/.cache/vim/undo,.       " to store undo files in same a specific dir
    au BufWritePre tmp* setl noundofile   " to ignore file into /tmp
endif

" 1}}}
" Code formatting {{{1

set tabstop=4
set softtabstop=4
set expandtab
set textwidth=0
set shiftwidth=4

set cinoptions=
set cinoptions+=L0.5s          " align labels at 0.5 shiftwidth
set cinoptions+=:0.5s,=0.5s    " same for case labels and code following labels
set cinoptions+=g0.5s,h0.5s    " same for C++ stuff
set cinoptions+=t0             " type on the line before the function is not indented
set cinoptions+=(0,Ws          " indent in functions ( ... ) when it breaks
set cinoptions+=m1             " align the closing ) properly
set cinoptions+=j1             " java/javascript -> fixes blocks
set cinoptions+=l0.5s          " align code after label ignoring braces.

" 1}}}
" Doxygen {{{1

au! Syntax {cpp,c,d,javascript}
au Syntax {cpp,c,d,javascript} runtime syntax/doxygen.vim
let g:doxygen_end_punctuation='[.?!]'

" 1}}}
" Remove trailing chars on save {{{1

autocmd BufWritePre * :%s/\s\+$//e

" 1}}}
" enable highlight search {{{1

set viminfo^=h

" 1}}}
" Custom map key settings {{{

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

" disable arrow key
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

" Properly handle multiline nav
nnoremap j gj
nnoremap k gk

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" }}}
" Leader commands {{{

:let mapleader = "\<Space>"

nnoremap <leader>. :CtrlPTag<cr>

" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $MYVIMRC

" remove current search highlight
:nmap <Leader><Space> :noh<CR>

" open Dropbox
map <Leader>db :e ~/Dropbox<cr>

" open Pomo
map <Leader>pomo :e ~/Dropbox/pomo<cr>

" open current dir
map <Leader>o :Sex<cr>

" Save Quit and VSplit shortcuts
map <Leader>w :w<cr>
map <Leader>q :q<cr>
map <Leader>vs :vsp<cr>

" tabularize =
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Toggle set paste/nopaste
set pastetoggle=<leader>z

" macros shortcuts
nnoremap Q @q
vnoremap Q :norm @q<cr>

" }}}
