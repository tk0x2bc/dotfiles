" =======================================================
" ~/.vimrc
" =======================================================

scriptencoding=utf-8

filetype plugin indent on

syntax enable

colorscheme default

set encoding=utf-8
set fileencoding=utf-8
set helplang=ja
set clipboard+=unnamed
set backspace=2
set tabstop=2
set shiftwidth=2
set laststatus=2
set statusline=\ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set nobackup
set noswapfile
set ruler
set termguicolors
set showmatch
set matchtime=4
set wrapscan
set hlsearch
set showcmd
set title
set number relativenumber
set cursorline
set cursorcolumn
set nofoldenable
set expandtab
set showtabline=2
set splitbelow
set splitright
set incsearch
set ignorecase
set synmaxcol=256
set smartcase
set background=dark
set updatetime=250
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set wildchar=<TAB>
set wildmenu
set wildmode=longest:full,full
set nocompatible
set noerrorbells
set novisualbell
set autoread

let mapleader="\<Space>"
let g:netrw_liststyle=3
let g:netrw_banner=1
let g:netrw_sizestyle="H"
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
let g:netrw_preview=1
let g:netrw_altv=1
let g:netrw_alto=1

nnoremap <silent><Esc><Esc> :nohlsearch<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>

nnoremap ,e :Ex<CR>

autocmd FocusGained,BufEnter * checktime

augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=ro
augroup END

augroup MakefileTab
  autocmd!
  autocmd FileType make set noexpandtab nosmarttab
augroup END

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Ex | endif

autocmd FocusGained,BufEnter * checktime

autocmd BufRead,BufNewFile *.slim set filetype=slim
autocmd BufRead,BufNewFile *.tsx set filetype=tsx
autocmd BufRead,BufNewFile *.jsx set filetype=jsx
autocmd BufRead,BufNewFile *.sbt set filetype=scala
autocmd BufRead,BufNewFile *.js set filetype=javascript
