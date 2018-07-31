" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'rking/ag.vim'
Plug 'taiansu/nerdtree-ag'
Plug 'sgur/ctrlp-extensions.vim'
Plug 'osyo-manga/vim-over'
Plug 'tacahiroy/ctrlp-funky'
Plug 'mattn/ctrlp-mark'
Plug 'scrooloose/syntastic'
Plug 'isruslan/vim-es6'
Plug 'kana/vim-repeat'
Plug 'mattn/ctrlp-register'
Plug 'justinmk/vim-sneak'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'jparise/vim-graphql'
Plug 'honza/vim-snippets'
Plug 'wincent/ferret'
Plug 'kana/vim-surround'
Plug 'tpope/vim-abolish'
"Plun 'ludovicchabant/vim-gutentags'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tpope/vim-unimpaired'
Plug 'bling/vim-airline'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ddollar/nerdcommenter'
Plug 'josuegaleas/jay'
Plug 'bounceme/base.vim'
Plug 'marlun/vim-starwars'
Plug 'goatslacker/mango.vim'
Plug 'mrkn/mrkn256.vim'
Plug 'blindFS/flattr.vim'
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go'
Plug 'nsf/gocode'
Plug 'mitermayer/vim-prettier'
Plug 'elixir-lang/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'
Plug 'ElmCast/elm-vim'
Plug 'pbogut/deoplete-elm'
Plug 'terryma/vim-multiple-cursors'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
" Plin 'Valloric/YouCompleteMe'
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'slim-template/vim-slim.git'
" Plugin 'bumaociyuan/vim-swift'
Plug 'itchyny/lightline.vim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

call plug#end()

let g:deoplete#enable_at_startup = 1

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

set noeb vb t_vb=
set nopaste
set nobackup
set noswapfile
filetype plugin indent on

" Refresh your vimness
autocmd! bufwritepost .vimrc source %

" Disable automatic comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let mapleader = "\<Space>"
set autoread
set showcmd
set nofoldenable
set nocompatible
syntax on
syntax enable
set autoindent
set expandtab
set smarttab
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set backspace=2
set ignorecase
nnoremap <Leader>w :w<CR>
set incsearch
map q: :q
colo flattr 

set mouse=
set guifont=Monaco:h12
imap ^? ^H

" Make moving between windows easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Make switching between tabs easier
nmap <silent> <C-Tab> :tabn<cr>
nmap <silent> <C-S-Tab> :tabp<cr>

" CTRL P
let g:ctrlp_mruf_max = 10000
nnoremap <leader>m :CtrlPMRU <cr>
nnoremap <leader>p :CtrlPRoot <cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>c :NERDTreeFind <cr>
nnoremap <leader>b :CtrlPBuffer <cr>

let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'top,order:btt,min:1,max:30,results:30'
let g:ctrlp_open_multiple_files = 'i'
let g:ctrlp_working_path_mode = 0 

" Nerd tree
let g:NERDTreeWinSize = 50

" Ctags and easy tags
"let g:easytags_dynamic_files = 1
"let g:easytags_on_cursorhold = 0
"let g:easytags_autorecurse = 1
"let g:easytags_async=1
set tags=./.tags,./.tags,.tags;$HOME

" Use ag in CtrlP for listing files. Lightning fast and respects
".gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
    autocmd BufRead,BufNewFile *.theme set filetype=php
  augroup END
endif

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Air bar or whatever
let g:airline_theme="light"

" Funky
nnoremap <Leader>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>F :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

" http://statico.github.io/vim.html
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>
nmap \n :setlocal number!<CR>:setlocal number?<CR>
nmap \r :setlocal relativenumber!<CR>:setlocal relativenumber?<CR>
set nonumber

" Go to last position in the buffer
autocmd BufEnter * silent! `"

cmap w!! w !sudo tee % >/dev/null
let g:syntastic_php_checkers = ["php"]
let g:jsx_ext_required = 0
let g:syntastic_ignore_files = ['.*\.scss$']

let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier
"autocmd BufWritePre *.js,*.ts,*.scss,*.less Prettier

" Elm
let g:elm_format_autosave = 1

let g:mix_format_on_save = 1
"let g:mix_format_silent_errors = 1
"autocmd BufWritePre *.ex,*.exs :MixFormat
"autocmd BufWritePost *.re :ReasonPrettyPrint

" Typescript
"let g:ycm_semantic_triggers['typescript'] = ['.']

"let g:tsuquyomi_disable_quickfix = 1
"let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:rustfmt_autosave = 1
"let g:rustfmt_command = "cargo fmt -- "

let g:syntastic_rust_checkers = ['cargo']

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls']
    \}
noremap <silent> H :call LanguageClient_textDocument_hover()<CR>
noremap <silent> Z :call LanguageClient_textDocument_definition()<CR>
noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
noremap <silent> S :call LanugageClient_textDocument_documentSymbol()<CR>
" }}}
