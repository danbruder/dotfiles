set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'gelguy/cmd2.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'rking/ag.vim'
Plugin 'taiansu/nerdtree-ag'
Plugin 'sgur/ctrlp-extensions.vim'
Plugin 'ervandew/supertab'
Plugin 'osyo-manga/vim-over'
Plugin 'tacahiroy/ctrlp-funky'
"Plugin 'benjifisher/vim-plugin-for-drupal'
Plugin 'git://drupalcode.org/project/vimrc.git', {'rtp': 'bundle/vim-plugin-for-drupal/'} 
Plugin 'mattn/ctrlp-mark'
Plugin 'scrooloose/syntastic'
Plugin 'isruslan/vim-es6'
Plugin 'kana/vim-repeat'
Plugin 'mattn/ctrlp-register'
Plugin 'monokrome/vim-flow'
Plugin 'justinmk/vim-sneak'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'grndlvl/drupal-snippets'
Plugin 'jparise/vim-graphql'
Plugin 'honza/vim-snippets'
Plugin 'wincent/ferret'
Plugin 'joonty/vdebug'
Plugin 'justinmk/vim-gtfo'
Plugin 'kana/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tpope/vim-unimpaired'
Plugin 'bling/vim-airline'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'ddollar/nerdcommenter'
Plugin 'veloce/vim-behat'
Plugin 'josuegaleas/jay'
Plugin 'bounceme/base.vim'
Plugin 'marlun/vim-starwars'
Plugin 'goatslacker/mango.vim'
Plugin 'mrkn/mrkn256.vim'
Plugin 'blindFS/flattr.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
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
set background=dark
"colorscheme mango
"colo mrkn256
colo flattr 
"colo solarized

set mouse=
set guifont=Monaco:h14
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
"nnoremap <Leader>r :CtrlPRegister<CR>
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'top,order:btt,min:1,max:30,results:30'
let g:ctrlp_open_multiple_files = 'i'
let g:ctrlp_working_path_mode = 0 

" Nerd tree
let g:NERDTreeWinSize = 50

" Ctags and easy tags
let g:easytags_dynamic_files = 1
let g:easytags_on_cursorhold = 0
let g:easytags_autorecurse = 1
let g:easytags_async=1
set tags=./.tags,./tags,tags;$HOME

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

" Snipmate 
let g:snippets_dir = "/Users/Dan/Projects/rdg/.snippets"

" Air bar or whatever
let g:airline_theme="light"

let g:feature_filetype='behat'

" tab shortcuts
map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>

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

" Vdebug
" Get rid of those annoying Vdebug windows
autocmd BufEnter DebuggerStack silent! :resize 1 
autocmd BufEnter DebuggerStatus silent! :resize 1
autocmd BufEnter DebuggerStack silent! :resize 1
autocmd BufEnter DebuggerWatch silent! :VdebugOpt watch_window_style collapsed
autocmd BufEnter DebuggerWatch silent! :set wrap!

" Go to last position in the buffer
autocmd BufEnter * silent! `"

cmap w!! w !sudo tee % >/dev/null
let g:syntastic_php_checkers = ["php"]
let g:jsx_ext_required = 0
let g:syntastic_ignore_files = ['.*\.scss$']
nnoremap <leader>rr :silent !drush cc all <cr>

let g:flow#enable = 0
let g:vdebug_options= {
      \    "port" : 9000,
      \    "break_on_open" : 0,
      \    "watch_window_style" : 'compact',
      \    "path_maps": {
      \       "/var/www/web": "/Users/dan/rdg/styledots/drupal/web"
      \     }
      \}
