" =======================================================
" ~/.config/nvim/init.vim
" =======================================================

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim
    \ --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'mattn/vim-lsp-icons'
Plug 'ryanolsonx/vim-lsp-typescript'
Plug 'ryanolsonx/vim-lsp-python'
Plug 'lighttiger2505/sqls.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'chemzqm/denite-git'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/deoplete-terminal'
Plug 'zchee/deoplete-zsh'
Plug 'Shougo/deol.nvim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'kristijanhusak/defx-icons'
" Plug 'kristijanhusak/defx-git'

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-comparator-lexical.vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'scrooloose/syntastic'
Plug 'cocopon/iceberg.vim'
Plug 'Rigellute/rigel'
Plug 'tomasr/molokai'
Plug 'pgavlin/pulumi.vim'

Plug 'gre/play2vim'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/ruby-matchit'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jxnblk/vim-mdx-js'
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'hashivim/vim-terraform'
Plug 'robertbasic/vim-hugo-helper'
Plug 'alvan/vim-closetag'
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'liquidz/vim-iced', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'vim-jp/vimdoc-ja'
Plug 'LeafCage/vimhelpgenerator'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/vim-sl'
Plug 'tpope/vim-surround'
Plug 'simeji/winresizer'
Plug 'luochen1990/rainbow'
Plug 'mechatroner/rainbow_csv'
Plug 'Shougo/junkfile.vim'
Plug 'pechorin/any-jump.vim'
Plug 'mattn/webapi-vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tyru/caw.vim'
Plug 'lambdalisue/readablefold.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'terryma/vim-multiple-cursors'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'easymotion/vim-easymotion'
Plug 't9md/vim-quickhl'
Plug 'darfink/vim-plist'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'mhinz/vim-startify'
" check: defxにもインデントラインが出る
" Plug 'Yggdroot/indentLine'
" Plug 'bronson/vim-trailing-whitespace'

call plug#end()

" =======================================================
" Global Settings
" =======================================================

scriptencoding=utf-8

syntax enable

"colorscheme iceberg
colorscheme rigel
"colorscheme molokai
"colorscheme pulumi

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
set pumblend=25
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
set inccommand=split
set noerrorbells
set novisualbell
set autoread

let mapleader="\<Space>"
let NERDTreeShowHidden=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:rigel_airline=1
let g:airline_theme='rigel'
let g:rainbow_active=1
let g:deoplete#enable_at_startup=1
let g:terraform_fmt_on_save=1
let g:netrw_liststyle=3
let g:fzf_layout={
      \ 'down': '~40%'
      \ }
let g:deol#shell_history_path='~/.zsh_history'
let g:gitgutter_highlight_lines=0
let g:javascript_plugin_flow=1
let g:closetag_filenames='*.html,*.vue,*.php'
let g:closetag_filetypes='html,vue,php'
let g:closetag_xhtml_filenames='*.xhtml,*.jsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive=1
let g:closetag_shortcut='>'
let g:closetag_close_shortcut='<leader>>'
let g:hugohelper_spell_check_lang='en_us'
let g:vimhelpgenerator_version=''
let g:vimhelpgenerator_author='Author: '
let g:vimhelpgenerator_contents={
      \ 'usage': 1,
      \ 'variables': 1,
      \ 'functions': 1,
      \ }
let g:lsp_log_verbose=1
let g:lsp_log_file=expand('~/vim-lsp.log')
let g:fern#logfile=expand('~/fern.tsv')
let g:fern#comparator='lexical'
let g:iced_enable_default_key_mappings=v:true
let g:iced#buffer#stdout#mods='vertical'
let g:iced#buffer#error#height=5

if executable('rg')
  let &grepprg='rg --vimgrep --hidden'
  set grepformat=%f:%l:%c:%m
endif

" =======================================================
" Functions
" =======================================================

function! FzfBLinesCurrWord()
  let currWord = expand('<cword>')
  if len(currWord) > 0
    call fzf#vim#blines({'options': '-q ' . currWord})
  else
    execute ':BLines'
  endif
endfunction

" =======================================================
" Key Mappings
" =======================================================

cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>
nnoremap <C-t>" :split<CR>
nnoremap <C-t>% :vsplit<CR>
nnoremap <C-l>d :LspDefinition<CR>
nnoremap <C-l>s :LspStatus<CR>
nnoremap <C-l>h :LspHover<CR>
nnoremap <C-l>c :LspCodeAcion<CR>
nnoremap <C-g>s :Gstatus<CR>
nnoremap <C-g>d :Gdiff<CR>
nnoremap <silent><Esc><Esc> :nohlsearch<CR>
nnoremap <Leader>sl :call sl#animate()<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>f :Denite file/rec file_mru buffer<CR>
nnoremap <Leader>l :Denite line<CR>
nnoremap <Leader>e :Denite file/rec buffer<CR>
nnoremap <Leader>h :Denite defx/history<CR>
nnoremap <Leader>g :Denite grep<CR>
nnoremap <Leader>b :Denite buffer<CR>
nnoremap <Leader>m :Denite menu<CR>
nnoremap <Leader>o :Denite outline<CR>
nnoremap <Leader>u :Denite source<CR>
nnoremap <Leader>c :Denite gitstatus<CR>
nnoremap <Leader>r :Denite register<CR>
" https://wonderwall.hatenablog.com/entry/2017/10/07/220000
nnoremap <silent>,f :Files<CR>
nnoremap <silent>,g :GFiles<CR>
nnoremap <silent>,x :GFiles?<CR>
nnoremap <silent>,b :Buffers<CR>
nnoremap <silent>,l :BLines<CR>
nnoremap <silent>,h :History<CR>
nnoremap <silent>,m :Mark<CR>
nnoremap <silent>,ag :Ag<CR>
nnoremap <silent>,d :Defx<CR>
nnoremap <silent>,n :NERDTreeToggle<CR>
" https://medium.com/@bookun/vim-advent-calendar-2019-12-20-63a12396211f
nnoremap <silent>df :Deol -split=floating<CR>
nnoremap <silent>dv :Deol -split=vertical<CR>
nnoremap <silent>dx :Deol -split=horizontal<CR>
nnoremap <silent>bg (deol_bg)

" =======================================================
" Dark powerd Settings
" =======================================================

call denite#custom#source('file_mru', 'matchers', ['matcher/fuzzy'])
call denite#custom#source('file/rec', 'sorters', ['sorter/sublime'])
call denite#custom#kind('file', 'default_action', 'open')
call denite#custom#var('file/rec', 'command', ['ag', '--hidden', '--ignore-dir', '.git', '--follow', '--nocolor', '-g', ''])
call denite#custom#var('file/rec/git', 'command', ['git', 'ls-files', '-co', '--exclude-standard'])
call denite#custom#var('file/rec/py', 'command', ['scantree.py', '--path', ':directory'])
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#alias('source', 'file/rec/py', 'file/rec')
call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/', 'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
call denite#custom#action('file', 'test', {
      \ context -> execute('let g:foo = 1')
      \ })
call denite#custom#action('file', 'test2', {
      \ context -> denite#do_action(
      \  CONTEXT, 'OPEN', CONTEXT['TARGETS']
      \ )})
call denite#custom#option('_', 'statusline', v:false)
call denite#custom#option('default', {
      \ 'split': 'horizontal',
      \ 'highlight_filter_background': 'DeniteFilter',
      \ 'prompt': '> ',
      \ 'start_filter': v:true
      \})
let s:menus = {}
let s:menus.rails = {
      \ 'description': 'Commands in Rails project',
      \ 'command_candidates': [
        \ ['install gems', '!bundle install'],
        \ ['execute tests', '!bundle exec rails test'],
        \ ['rubocop', '!bundle exec rubocop'],
        \ ['rubocop auto-correct', '!bundle exec rubocop --auto-correct'],
        \ ['slim-lint', '!bundle exec slim-lint app/**/*.slim'],
      \ ]
      \ }
let s:menus.dotfiles = {
      \ 'description': 'Edit dotfiles',
      \ 'file_candidates': [
        \ ['neovim', '~/.config/nvim/init.vim'],
        \ ['vim', '~/.vimrc'],
        \ ['tmux', '~/.tmux.conf'],
        \ ['zshrc', '~/.zsh/.zshrc'],
      \ ]
      \ }
call denite#custom#var('menu', 'menus', s:menus)

call defx#custom#column('mark', {
    \ 'readonly_icon': '✗',
    \ 'selected_icon': '✓',
    \ })
call defx#custom#option('_', {
      \ 'show_ignored_files': v:true,
      \ })

call deoplete#custom#option('smart_case', v:true)
call deoplete#custom#var('terminal', 'require_same_tab', v:false)

call deoppet#initialize()
call deoppet#custom#option('snippets_dirs', globpath(&runtimepath, 'neosnippets', 1, 1))

imap <C-k>  <Plug>(deoppet_expand)
imap <C-f>  <Plug>(deoppet_jump_forward)
imap <C-b>  <Plug>(deoppet_jump_backward)
smap <C-f>  <Plug>(deoppet_jump_forward)
smap <C-b>  <Plug>(deoppet_jump_backward)

" =======================================================
" Auto Commands
" =======================================================

augroup AuthQuickFix
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END

augroup AutoCommentOff
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=ro
augroup END

augroup MakefileTab
  autocmd!
  autocmd FileType make set noexpandtab nosmarttab
augroup END

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Defx | endif

autocmd FocusGained,BufEnter * checktime

autocmd BufRead,BufNewFile *.slim set filetype=slim
autocmd BufRead,BufNewFile *.tsx set filetype=tsx
autocmd BufRead,BufNewFile *.jsx set filetype=jsx
autocmd BufRead,BufNewFile *.sbt set filetype=scala
autocmd BufRead,BufNewFile *.js set filetype=javascript

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr><CR> denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'quickfix')
  nnoremap <silent><buffer><expr> q denite#do_map('quit')
  nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr><Space> denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer><C-o> <Plug>(denite_filter_quit)
  imap <silent><buffer><Esc> <Plug>(denite_filter_quit)
  "call deoplete#custom#buffer_option('auto_complete', v:false)
endfunction

autocmd User denite-preview call s:denite_preview()
function! s:denite_preview() abort
  setlocal number
endfunction

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr><CR> defx#do_action('open')
  nnoremap <silent><buffer><expr> c defx#do_action('copy')
  nnoremap <silent><buffer><expr> m defx#do_action('move')
  nnoremap <silent><buffer><expr> p defx#do_action('paste')
  nnoremap <silent><buffer><expr> v defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> i defx#do_action('open', 'split')
  nnoremap <silent><buffer><expr> t defx#do_action('open', 'tabnew')
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

" =======================================================
" Lsp Settings
" =======================================================

if executable('solargraph')
  augroup LspRuby
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
          \ 'name': 'solargraph',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
          \ 'initialization_options': {"diagnostics": "true"},
          \ 'whitelist': ['ruby'],
          \ })
  augroup END
endif

if executable('vim-language-server')
  augroup LspVim
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
          \ 'name': 'vim-language-server',
          \ 'cmd': {server_info->['vim-language-server', '--stdio']},
          \ 'whitelist': ['vim'],
          \ 'initialization_options': {
          \   'iskeyword': '@,48-57,_,192-255,-#',
          \   'vimruntime': expand($VIMRUNTIME),
          \   'suggest': { 'fromVimruntime': v:true },
          \ }})
  augroup END
endif

if executable('typescript-language-server')
  augroup LspTypescript
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'typescript-language-server',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
          \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
          \ 'whitelist': ['typescript', 'typescript.tsx'],
          \ })
    au User lsp_setup call lsp#register_server({
          \ 'name': 'javascript support using typescript-language-server',
          \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
          \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
          \ 'whitelist': ['typescript', 'javascript', 'javascript.jsx', 'javascriptreact']
          \ })
  augroup END
endif

if executable('intelephense')
  augroup LspPhp
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'intelephense',
          \ 'cmd': {server_info->['node', expand('~/.anyenv/envs/nodenv/versions/13.2.0/lib/node_modules/intelephense/lib/intelephense.js'), '--stdio']},
          \ 'initialization_options': {"storagePath": "/tmp/intelephense"},
          \ 'whitelist': ['php'],
          \ 'workspace_config': { 'intelephense': {
          \   'files.associations': ['*.php'],
          \ }},
          \ })
  augroup END
endif

if executable('css-languageserver')
  augroup LspCss
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'css-languageserver',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
          \ 'whitelist': ['css', 'less', 'sass'],
          \ })
  augroup END
endif

if executable('java') && filereadable(expand('$HOME/.lsp/groovy-language-server/build/libs/groovy-language-server.jar'))
  augroup LspGroovy
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
          \'name': 'groovy-language-server',
          \'cmd': {server_info->[
          \  'java',
          \  '-jar',
          \  expand('$HOME/.lsp/groovy-language-server/build/libs/groovy-language-server.jar')
          \]},
          \'whitelist': ['groovy']
          \})
  augroup END
endif

if executable('java') && filereadable(expand('~/.lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.600.v20191014-2022.jar'))
  augroup LspJava
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'eclipse.jdt.ls',
          \ 'cmd': {server_info->[
          \     'java',
          \     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
          \     '-Dosgi.bundles.defaultStartLevel=4',
          \     '-Declipse.product=org.eclipse.jdt.ls.core.product',
          \     '-Dlog.level=ALL',
          \     '-noverify',
          \     '-Dfile.encoding=UTF-8',
          \     '-Xmx1G',
          \     '-jar',
          \     expand('~/.lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.600.v20191014-2022.jar'),
          \     '-configuration',
          \     expand('~/.lsp/eclipse.jdt.ls/config_mac'),
          \     '-data',
          \     getcwd()
          \ ]},
          \ 'whitelist': ['java', 'scala'],
          \ })
  augroup END
endif

if executable('metals-vim')
  augroup LspScala
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'metals',
          \ 'cmd': {server_info->['metals-vim']},
          \ 'initialization_options': { 'rootPatterns': 'build.sbt' },
          \ 'whitelist': [ 'scala', 'sbt' ],
          \ })
  augroup END
endif

if executable('docker-langserver')
  augroup LspDocker
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'docker-langserver',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'docker-langserver --stdio']},
          \ 'whitelist': ['dockerfile'],
          \ })
  augroup END
endif

if executable('html-languageserver')
  augroup LspHtml
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'html-languageserver',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
          \ 'whitelist': ['html'],
          \ })
  augroup END
endif

if executable('yaml-language-server')
  augroup LspYaml
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
          \ 'name': 'yaml-language-server',
          \ 'cmd': {server_info->['yaml-language-server', '--stdio']},
          \ 'whitelist': ['yaml', 'yaml.ansible'],
          \ 'workspace_config': {
          \   'yaml': {
          \     'validate': v:true,
          \     'hover': v:true,
          \     'completion': v:true,
          \     'customTags': [],
          \     'schemas': {},
          \     'schemaStore': { 'enable': v:true },
          \   }
          \ }
          \})
  augroup END
endif

if executable('go-langserver')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'go-langserver',
        \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
        \ 'whitelist': ['go'],
        \ })
  autocmd BufWritePre *.go LspDocumentFormatSync
end

if executable('pyls')
  augroup LspPython
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'pyls',
          \ 'cmd': {server_info->['pyls']},
          \ 'whitelist': ['python'],
          \ })
  augroup END
endif

if executable('rls')
  augroup LspRust
    autocmd!
  au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
        \ 'whitelist': ['rust'],
        \ })
  augroup END
end

if executable('bash-language-server')
  augroup LspBash
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'bash-language-server',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
          \ 'whitelist': ['sh'],
          \ })
  augroup END
endif

if executable('clojure-lsp')
  augroup LspClojure
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'clojure-lsp',
          \ 'cmd': {server_info->['clojure-lsp']},
          \ 'whitelist': ['clojure'],
          \ })
  augroup END
endif

if executable('sql-language-server')
  augroup LspSql
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'sql-language-server',
          \ 'cmd': {server_info->['sql-language-server', 'up', '--method', 'stdio']},
          \ 'whitelist': ['sql'],
          \ })
  augroup END
endif

" check: starting->runningにならない
if executable('vscode-json-languageserver')
  augroup LspJson
    autocmd!
    au User lsp_setup call lsp#register_server({
          \ 'name': 'vscode-json-languageserver',
          \ 'cmd': {server_info->['vscode-json-languageserver', '--node-ipc']},
          \ 'whitelist': ['json', 'jsonc'],
          \ })
  augroup END
endif

