
"
"
"  _____              _      __      ___              _____             __ _       
" |  __ \            ( )     \ \    / (_)            / ____|           / _(_)      
" | |  | | __ _ _ __ |/ ___   \ \  / / _ _ __ ___   | |     ___  _ __ | |_ _  __ _ 
" | |  | |/ _` | '_ \  / __|   \ \/ / | | '_ ` _ \  | |    / _ \| '_ \|  _| |/ _` |
" | |__| | (_| | | | | \__ \    \  /  | | | | | | | | |___| (_) | | | | | | | (_| |
" |_____/ \__,_|_| |_| |___/     \/   |_|_| |_| |_|  \_____\___/|_| |_|_| |_|\__, |
"                                                                             __/ |
"                                                                            |___/ 
" 
"
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

if (has("termguicolors"))
 set termguicolors
endif

"+--------------------------------------------------------------------------------
"| Language client
"+--------------------------------------------------------------------------------
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }


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
Plug 'junegunn/vim-easy-align'

" ncm2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" ncm2 Base
Plug 'ncm2/ncm2-syntax'
Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-bufword'
" ncm2 Langs
Plug 'ncm2/ncm2-racer'
Plug 'megalithic/ncm2-elm', { 'for': ['elm'], 'do': 'npm i -g elm-oracle' }
Plug 'ncm2/ncm2-tern'
Plug 'mhartington/nvim-typescript'
Plug 'ncm2/ncm2-go'
Plug 'pbogut/ncm2-alchemist'
Plug 'ncm2/ncm2-cssomni'


"+--------------------------------------------------------------------------------
"| Ide
"+--------------------------------------------------------------------------------
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ddollar/nerdcommenter'


"+--------------------------------------------------------------------------------
"| Syntax
"+--------------------------------------------------------------------------------
Plug 'airblade/vim-rooter'
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim'
Plug 'isruslan/vim-es6'
Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'nsf/gocode'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'elixir-editors/vim-elixir'
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
Plug 'jxnblk/vim-mdx-js'
Plug 'neovimhaskell/haskell-vim'


"+--------------------------------------------------------------------------------
"| Colorscheme
"+--------------------------------------------------------------------------------
Plug 'nanotech/jellybeans.vim'
Plug 'blindFS/flattr.vim'
Plug 'rakr/vim-one'
Plug 'cormacrelf/vim-colors-github'
Plug 'reedes/vim-colors-pencil'
Plug 'arcticicestudio/nord-vim'
Plug 'haishanh/night-owl.vim'

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
autocmd! bufwritepost .vimrc source % " Changes to init.vim refresh immediately
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable automatic comments
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
"| Colorcheme
"+--------------------------------------------------------------------------------
set background=light
colo night-owl
let g:one_allow_italics = 1
let g:pencil_terminal_italics = 1
let g:airline_theme="night_owl"
let g:nord_italic = 1


"+--------------------------------------------------------------------------------
"| Moving between windows and tabs
"+--------------------------------------------------------------------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nmap <silent> <C-Tab> :tabn<cr>
nmap <silent> <C-S-Tab> :tabp<cr>


"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"| 
"| Plugin Config
"| 
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

"+--------------------------------------------------------------------------------
"| Nerd commenter
"+--------------------------------------------------------------------------------
let g:NERDCompactSexyComs = 1

"+--------------------------------------------------------------------------------
"| Language Client
"+--------------------------------------------------------------------------------
autocmd BufReadPost *.rs setlocal filetype=rust
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'go': ['go-langserver'] }
let g:LanguageClient_autoStart = 1
nnoremap <silent> K :call LanguageClient_textDocument_hover()
nnoremap <silent> gd :call LanguageClient_textDocument_definition()
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()
let g:autofmt_autosave = 1
let g:rustfmt_autosave = 1


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
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_use_caching = 0 " ag is fast enough that CtrlP doesn't need to cache


"+--------------------------------------------------------------------------------
"| NerdTree
"+--------------------------------------------------------------------------------
let g:NERDTreeWinSize = 50


"+--------------------------------------------------------------------------------
"| Gutentags
"+--------------------------------------------------------------------------------
set tags=./.tags,./.tags,.tags;$HOME


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
"| Ale
"+--------------------------------------------------------------------------------
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --semi=true'
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'css': ['prettier'],
\}
let g:ale_fix_on_save = 1

"+--------------------------------------------------------------------------------
"| Prettier
"+--------------------------------------------------------------------------------
"let g:prettier#autoformat = 1
autocmd BufWritePre *.ts,*.tsx,*.css,*.less,*.json,*.graphql,*.md,*.vue Prettier


"+--------------------------------------------------------------------------------
"| Elm
"+--------------------------------------------------------------------------------
let g:elm_format_autosave = 1


"+--------------------------------------------------------------------------------
"| Elixir
"+--------------------------------------------------------------------------------
let g:mix_format_on_save = 1
let g:mix_format_options = '--check-equivalent'
let g:mix_format_silent_errors = 1


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


"+--------------------------------------------------------------------------------
"| Easy Align
"+--------------------------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign) 
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"+--------------------------------------------------------------------------------
"| Ncm
"+--------------------------------------------------------------------------------
autocmd BufEnter * call ncm2#enable_for_buffer()
" This will show the popup menu even if there's only one match (menuone),
" prevent automatic selection (noselect) and prevent automatic text injection
" into the current line (noinsert).
set completeopt=noinsert,menuone,noselect

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
