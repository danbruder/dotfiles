"  _____              _      __      ___              _____             __ _       
" |  __ \            ( )     \ \    / (_)            / ____|           / _(_)      
" | |  | | __ _ _ __ |/ ___   \ \  / / _ _ __ ___   | |     ___  _ __ | |_ _  __ _ 
" | |  | |/ _` | '_ \  / __|   \ \/ / | | '_ ` _ \  | |    / _ \| '_ \|  _| |/ _` |
" | |__| | (_| | | | | \__ \    \  /  | | | | | | | | |___| (_) | | | | | | | (_| |
" |_____/ \__,_|_| |_| |___/     \/   |_|_| |_| |_|  \_____\___/|_| |_|_| |_|\__, |
"                                                                             __/ |
"                                                                            |___/ 
" 

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"| 
"| Plugins
"| 
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#begin('~/.nvim-plugins')

if has('nvim')
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
else
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"+--------------------------------------------------------------------------------
"| Nertree
"+--------------------------------------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'rking/ag.vim'
Plug 'taiansu/nerdtree-ag'

"+--------------------------------------------------------------------------------
"| Ctrlp
"+--------------------------------------------------------------------------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'mattn/ctrlp-mark'
Plug 'sgur/ctrlp-extensions.vim'
Plug 'mattn/ctrlp-register'

"+--------------------------------------------------------------------------------
"| Editing
"+--------------------------------------------------------------------------------
Plug 'kana/vim-repeat'
Plug 'kana/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe'

"+--------------------------------------------------------------------------------
"| Ide
"+--------------------------------------------------------------------------------
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ddollar/nerdcommenter'

"+--------------------------------------------------------------------------------
"| Syntax
"+--------------------------------------------------------------------------------
"Plug 'scrooloose/syntastic'
Plug 'isruslan/vim-es6'
Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'nsf/gocode'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'elixir-lang/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'
Plug 'ElmCast/elm-vim'
Plug 'Quramy/tsuquyomi'
Plug 'rust-lang/rust.vim'
Plug 'slim-template/vim-slim'
Plug 'bumaociyuan/vim-swift'
Plug 'mustache/vim-mustache-handlebars'
Plug 'lepture/vim-jinja'
Plug 'cespare/vim-toml'

"+--------------------------------------------------------------------------------
"| Colorscheme
"+--------------------------------------------------------------------------------
"Plug 'nanotech/jellybeans.vim'
"Plug 'blindFS/flattr.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"| 
"| General settings
"|
"|       .---.
"|      /_____\
"|      ( '.' )
"|       \_-_/_
"|    .-"`'V'//-.
"|   / ,   |// , \
"|  / /|Ll //Ll|\ \
"| / / |__//   | \_\
"| \ \/---|[]==| / /
"|  \/\__/ |   \/\/
"|   |/_   | Ll_\|
"|     |`^"""^`|
"|     |   |   |
"|     |   |   |
"|     |   |   |
"|     |   |   |
"|     L___l___J
"|      |_ | _|
"|     (___|___)
"|      ^^^ ^^^
"| 
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set nocompatible              
filetype off                  
filetype plugin indent on    
set noeb vb t_vb=
set nopaste
set nobackup
set noswapfile
filetype plugin indent on

" Changes to init.vim refresh immediately
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
set hlsearch
hi Search ctermbg=Gray
map q: :q
"colo flattr
set mouse=
imap ^? ^H
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>
nmap \n :setlocal number!<CR>:setlocal number?<CR>
nmap \r :setlocal relativenumber!<CR>:setlocal relativenumber?<CR>
set nonumber
" Go to last position in the buffer
autocmd BufEnter * silent! `"
cmap w!! w !sudo tee % >/dev/null

"+--------------------------------------------------------------------------------
"| Moving between windows and tabs
"+--------------------------------------------------------------------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nmap <silent> <C-Tab> :tabn<cr>
nmap <silent> <C-S-Tab> :tabp<cr>

"+--------------------------------------------------------------------------------
"| Airline
"+--------------------------------------------------------------------------------
let g:airline_theme="light"


"+--------------------------------------------------------------------------------
"| CtrlP
"+--------------------------------------------------------------------------------
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
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0

"+--------------------------------------------------------------------------------
"| NerdTree
"+--------------------------------------------------------------------------------
let g:NERDTreeWinSize = 50

"+--------------------------------------------------------------------------------
"| Gutentags
"+--------------------------------------------------------------------------------
"set tags=./.tags,./.tags,.tags;$HOME

"+--------------------------------------------------------------------------------
"| Drupal
"+--------------------------------------------------------------------------------
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
let g:syntastic_php_checkers = ["php"]

"+--------------------------------------------------------------------------------
"| Funky
"+--------------------------------------------------------------------------------
nnoremap <Leader>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>F :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

"+--------------------------------------------------------------------------------
"| Prettier
"+--------------------------------------------------------------------------------
"let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.json,*.graphql,*.md,*.vue Prettier

"+--------------------------------------------------------------------------------
"| Elm
"+--------------------------------------------------------------------------------
let g:elm_format_autosave = 1

"+--------------------------------------------------------------------------------
"| Elixir
"+--------------------------------------------------------------------------------
let g:mix_format_on_save = 1

"+--------------------------------------------------------------------------------
"| typescript
"+--------------------------------------------------------------------------------
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:tsuquyomi_completion_detail = 1
let g:autofmt_autosave = 1

"+--------------------------------------------------------------------------------
"| Tera
"+--------------------------------------------------------------------------------
autocmd BufNewFile,BufRead *.tera set ft=jinja

"+--------------------------------------------------------------------------------
"| Syntastic
"+--------------------------------------------------------------------------------
let g:jsx_ext_required = 0
let g:syntastic_ignore_files = ['.*\.scss$']

