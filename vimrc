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

" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_section_y = 'BN: %{bufnr("%")}'

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

let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint', 'jsonlint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
let g:syntastic_typescript_tsc_args = '--target ES5'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" }}}
" Typescript {{{

autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)

"}}}
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
" Code Formatting {{{

set autoindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
au filetype javascript setlocal sw=2 ts=2 et

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

nnoremap Q <nop>
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

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

cnoreabbrev X x

nmap <F1> <nop>

inoremap jj <esc>
inoremap jk <esc>

" }}}
" Leader {{{

:let mapleader = "\<Space>"
:nmap <Leader>ev :e $MYVIMRC
:nmap <Leader>es :source $MYVIMRC
:nmap <Leader><Space> :noh<CR>

map <Leader>w :w<cr>
map <Leader>q :q<cr>

map <Leader><Tab> :bnext<cr>

map <Leader>b :make<cr>

map <Leader>m :MRU<cr>

map <Leader>p :set paste<CR>"*]p:set nopaste<cr>

map <leader>k :E<cr>

nnoremap <Leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><CR>

nnoremap <silent> <Leader>e :NERDTreeFind<CR>
nnoremap <Leader>f :NERDTreeToggle<Enter>

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gi :Git add -p %<CR>

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

set laststatus=2

set t_Co=256                        " force vim to use 256 colors
let g:solarized_termcolors=256      " use solarized 256 fallback

set hlsearch

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" }}}
" Load local conf if present {{{

if filereadable(glob("~/.vimrc.local"))
	source ~/.vimrc.local
endif

" }}}

