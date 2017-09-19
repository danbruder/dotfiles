set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'gelguy/cmd2.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'rking/ag.vim'
Plugin 'taiansu/nerdtree-ag'
Plugin 'sgur/ctrlp-extensions.vim'
Plugin 'ervandew/supertab'
"Plugin 'mutewinter/vim-css3-syntax'
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
"Plugin 'grndlvl/drupal-snippets'
Plugin 'jparise/vim-graphql'
"Plugin 'honza/vim-snippets'
Plugin 'wincent/ferret'
"Plugin 'joonty/vdebug'
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
Plugin 'junegunn/vim-easy-align'
Plugin 'junegunn/vim-fnr'
Plugin 'junegunn/vim-peekaboo'
Plugin 'junegunn/vim-slash'
Plugin 'mitermayer/vim-prettier'
Plugin 'fatih/vim-go'
Plugin 'reasonml-editor/vim-reason'
" ES2015 code snippets (Optional)
"Plugin 'epilande/vim-es2015-snippets'
" React code snippets
"Plugin 'epilande/vim-react-snippets'
" Ultisnips
"Plugin 'SirVer/ultisnips'
" Trigger configuration (Optional)
"let g:UltiSnipsExpandTrigger="<C-l>"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
nnoremap <Leader>w :w!<CR>
set incsearch
map q: :q
set background=dark
"colorscheme mango
"colo mrkn256
"colo flattr
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
if executable('ag')
    let s:ctrlp_fallback = 'ag -i --nocolor --nogroup --hidden -g "" %s'
elseif executable('ack-grep')
    let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
elseif executable('ack')
    let s:ctrlp_fallback = 'ack %s --nocolor -f'
elseif (has("win32") || has("win64") || has("win95") || has("win16"))
    let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
else
    let s:ctrlp_fallback = 'find %s -type f'
endif
if exists("g:ctrlp_user_command")
    unlet g:ctrlp_user_command
endif
let g:ctrlp_user_command = {
            \ 'types': {
            \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
            \ 2: ['.hg', 'hg --cwd %s locate -I .'],
            \ },
            \ 'fallback': s:ctrlp_fallback
            \ }

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

"" Vdebug
"" Get rid of those annoying Vdebug windows
"autocmd BufEnter DebuggerStack silent! :resize 1
"autocmd BufEnter DebuggerStatus silent! :resize 1
"autocmd BufEnter DebuggerStack silent! :resize 1
"autocmd BufEnter DebuggerWatch silent! :VdebugOpt watch_window_style collapsed
"autocmd BufEnter DebuggerWatch silent! :set wrap!

" Go to last position in the buffer
autocmd BufEnter * silent! `"

cmap w!! w !sudo tee % >/dev/null
let g:syntastic_php_checkers = ["php"]
let g:jsx_ext_required = 0
let g:syntastic_ignore_files = ['.*\.scss$']

let g:flow#enable = 0
let g:vdebug_options= {
      \    "port" : 9000,
      \    "break_on_open" : 0,
      \    "watch_window_style" : 'compact',
      \    "path_maps": {
      \       "/var/www/web": "/Users/dan/rdg/styledots/drupal/web"
      \     }
      \}

" Easy Align because C
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Comment boxes
nmap <leader>cb i<cr>/<Esc>80A*<Esc>A<CR><Esc>^Di * <Esc>A<CR><Esc>^Di <Esc>80A*<Esc>A/<Esc>kA

set backupcopy=yes

" Note, env-vim.lnt sets Lint's error format to conform to Vim's
" default value of the 'errorformat' option.
"CompilerSet errorformat&

"set makeprg=lin\ g1plus

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.css,*.scss,*.less Prettier

set tsl=0

"Go
nnoremap <Leader>gt :GoTest<CR>
nnoremap <Leader>gb :GoTest<CR>
nnoremap <Leader>gi :GoInstall<CR>
nnoremap <Leader>gc :GoCoverageBrowser<CR>
nnoremap <Leader>gd :GoDefinition<CR>
nnoremap <Leader>gr :GoRun<CR>
nnoremap <Leader>ga :GoAlternate<CR>
nnoremap <Leader>gg :GoAddTags<CR>
nnoremap <Leader>ge :GoErrCheck<CR>
nnoremap <Leader>gk :GoKeyify<CR>

function! HeaderToggle() " bang for overwrite when saving vimrc
  let file_path = expand("%")
  let file_name = expand("%<")
  let extension = split(file_path, '\.')[-1] " '\.' is how you really split on dot
  let err_msg = "There is no file "

  if extension == "c"
    let next_file = join([file_name, ".h"], "")

    if filereadable(next_file)
      :e %<.h
    else
      echo join([err_msg, next_file], "")
    endif
  elseif extension == "h"
    let next_file = join([file_name, ".c"], "")

    if filereadable(next_file)
      :e %<.c
    else
      echo join([err_msg, next_file], "")
    endif
  endif
endfunction

nnoremap <Leader>h :call HeaderToggle()<CR>
