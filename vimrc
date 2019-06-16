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
" {{{ Nerd Tree

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=60

let NERDTreeIgnore = ['\.DS_Store$']

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

let g:python_host_prog = '/Users/adrien/.pyenv/versions/neovim3/bin/python'
let g:python3_host_prog = '/Users/adrien/.pyenv/versions/neovim3/bin/python'

" }}}
" {{{ UltiSnips

let g:UltiSnipsExpandTrigger="<tab>"

" }}}
" {{{ lightline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
" }}}
" {{{ Ale linter

let g:ale_linters = {
    \   'scss': ['stylelint'],
    \   'javascript': ['eslint', 'flow'],
    \   'typescript': ['tsserver', 'eslint'],
    \   'python': ['flake8']
\}
let g:ale_linters_ignore = {'typescript': ['tslint']}

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['typescript'] = ['prettier']
let g:ale_fixers['scss'] = ['stylelint']
let g:ale_javascript_prettier_use_local_config = 1


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1

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
map <leader>k :E<cr>
map <Leader>gd :Gdiff<cr>
map <Leader>p :ALEFix<cr>

map <Leader>t :Dispatch npx jest --bail --findRelatedTests %<CR>
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

set wildignore+=*/tmp/*,*/javascript.compressed/*,*/ext/*,*/node_modules/,pmu/*/dist/*
set wildignore+=*.so,*.swp,*.zip*,*.blk,*.c,*.h

set statusline+=%#warningmsg#
set statusline+=%*

syntax enable
colorscheme solarized8
set background=dark

if has("termguicolors")
  set termguicolors
endif

set encoding=utf-8
set foldmethod=marker

autocmd BufWritePre * :%s/\s\+$//e

" auto set current dir
autocmd BufEnter * lcd %:p:h

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
