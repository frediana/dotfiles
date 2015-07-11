" Vundle {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'groenewege/vim-less'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-commentary'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-distinguished'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Bundle 'scrooloose/syntastic'
" Bundle 'altercation/vim-colors-solarized'

call vundle#end()

" }}}
" Colors & Theming {{{
let &t_Co=256
set background=dark
colorscheme distinguished

" }}}
" Airline {{{

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

:set ignorecase
:set noantialias

" }}}
" Syntastic {{{

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']

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
set encoding=utf-8
set nocompatible
set backspace=indent,eol,start

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

set report=0
set laststatus=2
set wildmenu

set backupdir=~/.vim/backup
set directory=~/.vim/backup
set gdefault
set shiftround

" Undo and tags
set cpoptions-=C
set tags=tags;/,.tags;/,TAG;/
if version >= 703
    set undofile                          " to activate undofile feature
    set undodir=~/.cache/vim/undo,.       " to store undo files in same a specific dir
    au BufWritePre tmp* setl noundofile   " to ignore file into /tmp
endif

" Code formatting
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

" Doxygen
au! Syntax {cpp,c,d,javascript}
au Syntax {cpp,c,d,javascript} runtime syntax/doxygen.vim
let g:doxygen_end_punctuation='[.?!]'

" Remove trailing chars on save
autocmd BufWritePre * :%s/\s\+$//e

" enable highlight search
set viminfo^=h

" }}}
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


" }}}
" Leader commands {{{

:let mapleader = ","
nnoremap <leader>. :CtrlPTag<cr>
" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $MYVIMRC

" }}}
