" Vundle repositories {{{

if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

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

let g:airline_powerline_fonts = 1

" }}}
" {{{ Nerd Tree

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" }}}
" {{{ Deo Complete

let g:deoplete#enable_at_startup = 1

" }}}
" {{{ Ale linter

let g:ale_linters = {
    \   'scss': ['sasslint'],
    \   'javascript': ['eslint'],
\}

" }}}
" Code Formatting {{{

set autoindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
au filetype javascript setlocal sw=2 ts=2 et

" }}}
" Visual customizations {{{

set colorcolumn=100
set relativenumber
set number
set ruler
set cursorline
set title
set titlestring=%t
hi ColorColumn ctermbg=blue

" }}}
" Keyboard shortcuts {{{

nnoremap Q <nop>
map  <C-Left>   <C-w><Left>
map! <C-Left>   <Esc> <C-w><Left>
map  <C-Right>  <C-w><Right>
map! <C-Right>  <Esc> <C-w><Right>
map  <C-Up>     <C-w><Up>
map! <C-Up>     <Esc> <C-w><Up>
map  <C-Down>   <C-w><Down>
map! <C-Down>   <Esc> <C-w><Down>

nnoremap j gj
nnoremap k gk

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

cnoreabbrev X x

nmap <F1> <nop>

inoremap jj <esc>
inoremap jk <esc>

nnoremap <silent> [e :ALEPrevious<CR>
nnoremap <silent> ]e :ALENext<CR>

" }}}
" Leader {{{

:let mapleader = "\<Space>"

:nmap <Leader>ev :e $MYVIMRC
:nmap <Leader>es :source $MYVIMRC
:nmap <Leader><Space> :noh<CR>

map <Leader>w :w<cr>
map <Leader>x :x<cr>
map <Leader>q :q<cr>
map <Leader><Tab> :bnext<cr>
map <Leader>m :MRU<cr>
map <Leader>p :set paste<CR>"*]p:set nopaste<cr>
map <leader>k :E<cr>
map <Leader>gd :Gdiff<cr>

map <Leader>t :Dispatch npm test<CR>
nnoremap <Leader>f :NERDTreeToggle<Enter>

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

set ttyfast
set lazyredraw

set wildignore+=*/tmp/*,*/javascript.compressed/*,*/ext/*,*/node_modules/*
set wildignore+=*.so,*.swp,*.zip*,*.blk,*.c,*.h

set statusline+=%#warningmsg#
set statusline+=%*

syntax enable
colorscheme solarized8_dark

set encoding=utf-8
set foldmethod=marker

autocmd BufWritePre * :%s/\s\+$//e

" disable splash
set shortmess+=I

set ignorecase
set smartcase

set grepprg=ag

set backspace=indent,eol,start

autocmd FileType * setlocal formatoptions-=r formatoptions-=o

set laststatus=2

set hlsearch

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

" }}}
" Load local conf if present {{{

if filereadable(glob("~/.vimrc.local"))
	source ~/.vimrc.local
endif

" }}}

