" =======================================================
" ~/.vimrc
" =======================================================

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('zxqfl/tabnine-vim')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/defx.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')

  call dein#add('scrooloose/syntastic')
  call dein#add('tomasr/molokai')

  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('vim-jp/vimdoc-ja')
  call dein#add('simeji/winresizer')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" =======================================================
" Global Settings
" =======================================================

scriptencoding=utf-8

filetype plugin indent on

syntax enable

colorscheme molokai

set encoding=utf-8
set fileencoding=utf-8
set helplang=ja
set clipboard+=unnamed
set backspace=2
set tabstop=2
set shiftwidth=2
set laststatus=2
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

let mapleader="\<Space>"
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" =======================================================
" Key Mappings
" =======================================================

nnoremap <silent><Esc><Esc> :nohlsearch<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <silent>,d :Defx<CR>
nnoremap <silent>,n :NERDTreeToggle<CR>

call defx#custom#column('mark', {
    \ 'readonly_icon': '✗',
    \ 'selected_icon': '✓',
    \ })
call defx#custom#option('_', {
      \ 'columns': 'mark:indent:icon:filename:type:size:time',
      \ 'show_ignored_files': v:true,
      \ })

" =======================================================
" auto commands
" =======================================================

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Defx | endif

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
  nnoremap <silent><buffer><expr> c defx#do_action('copy')
  nnoremap <silent><buffer><expr> m defx#do_action('move')
  nnoremap <silent><buffer><expr> p defx#do_action('paste')
  nnoremap <silent><buffer><expr> v defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> i defx#do_action('open', 'split')
  nnoremap <silent><buffer><expr> o defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> O defx#do_action('open_tree_recursive')
  nnoremap <silent><buffer><expr> x defx#do_action('close_tree')
  nnoremap <silent><buffer><expr> P defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d defx#do_action('remove')
  nnoremap <silent><buffer><expr> r defx#do_action('rename')
  nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> ee defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
  nnoremap <silent><buffer><expr> b defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
  nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
endfunction
