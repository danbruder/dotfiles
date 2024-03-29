"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"
" _____              _      __      ___              _____             __ _       
" |  __ \            ( )     \ \    / (_)            / ____|           / _(_)      
" | |  | | __ _ _ __ |/ ___   \ \  / / _ _ __ ___   | |     ___  _ __ | |_ _  __ _ 
" | |  | |/ _` | '_ \  / __|   \ \/ / | | '_ ` _ \  | |    / _ \| '_ \|  _| |/ _` |
" | |__| | (_| | | | | \__ \    \  /  | | | | | | | | |___| (_) | | | | | | | (_| |
" |_____/ \__,_|_| |_| |___/     \/   |_|_| |_| |_|  \_____\___/|_| |_|_| |_|\__, |
"                                                                             __/ |
"                                                                            |___/ 
" 
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
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

"Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'noahfrederick/vim-laravel'

" For Vim laravel
Plug 'tpope/vim-dispatch'             "| Optional
Plug 'tpope/vim-projectionist'        "|
Plug 'noahfrederick/vim-composer'     "|
Plug 'noahfrederick/vim-laravel'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Writing
Plug 'junegunn/goyo.vim'
Plug 'preservim/vim-pencil' 
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'preservim/vim-lexical'
Plug 'preservim/vim-litecorrect'
Plug 'preservim/vim-textobj-sentence'

"+--------------------------------------------------------------------------------
"| Ide
"+--------------------------------------------------------------------------------
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ddollar/nerdcommenter'


"+--------------------------------------------------------------------------------
"| Syntax
"+--------------------------------------------------------------------------------
Plug 'jwalton512/vim-blade'
Plug 'isruslan/vim-es6'
Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
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
Plug 'jxnblk/vim-mdx-js'
Plug 'neovimhaskell/haskell-vim'
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-hclfmt'
Plug 'beanworks/vim-phpfmt'
Plug 'dart-lang/dart-vim-plugin'
Plug 'ChrisWellsWood/roc.vim'


"+--------------------------------------------------------------------------------
"| Colorscheme
"+--------------------------------------------------------------------------------
Plug 'nanotech/jellybeans.vim'
Plug 'blindFS/flattr.vim'
Plug 'rakr/vim-one'
Plug 'cormacrelf/vim-colors-github'
Plug 'reedes/vim-colors-pencil'
Plug 'haishanh/night-owl.vim'
Plug 'vim-crystal/vim-crystal'

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
set shiftwidth=4
set softtabstop=4
set tabstop=4
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
"colo github
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


"+--------------------------------------------------------------------------------
"| Save the muscles in my arm
"+--------------------------------------------------------------------------------
imap jj <Esc>:w<CR>

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
" autocmd BufReadPost *.rs setlocal filetype=rust
" let g:LanguageClient_serverCommands = {
"   \ 'go': ['go-langserver'],
"   \}

  "\ 'elm': ['elm-language-server']
  "\ 'rust': ['~/.cargo/bin/ra_lsp_server'],
  "\ 'rust': ['rustup', 'run', 'stable', 'rls'],
" let g:LanguageClient_rootMarkers = {
"       \ 'elm': ['elm.json'],
"       \ }
" let g:LanguageClient_autoStart = 1
" nnoremap <silent> K :call LanguageClient_textDocument_hover()
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()
let g:autofmt_autosave = 1
let g:rustfmt_autosave = 1


"+--------------------------------------------------------------------------------
"| CtrlP
"+--------------------------------------------------------------------------------
let g:ctrlp_mruf_max = 100
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
"| PHP
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

" A standard type: PEAR, PHPCS, PSR1, PSR2, Squiz and Zend
let g:phpfmt_standard = 'PSR2'
let g:phpfmt_autosave = 1


"+--------------------------------------------------------------------------------
"| Ale
"+--------------------------------------------------------------------------------
"let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --semi=true'
" let g:ale_fixers = {
" " \   'javascript': ['eslint'],
" " \   'css': ['prettier'],
" " \}
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
" highlight ALEWarning ctermbg=DarkMagenta
" let g:ale_disable_lsp = 1

"+--------------------------------------------------------------------------------
"| Prettier
"+--------------------------------------------------------------------------------
"let g:prettier#autoformat = 1
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"+--------------------------------------------------------------------------------
"| Elixir
"+--------------------------------------------------------------------------------
" let g:mix_format_on_save = 1
" let g:mix_format_silent_errors = 1
"autocmd bufreadpost *.exs setlocal filetype=elixir
"autocmd bufreadpost *.lexs setlocal filetype=elixir
autocmd bufreadpost *.heex setlocal filetype=eelixir
"autocmd BufReadPost *.exs setlocal formatprg=mix\ format\ -

"+--------------------------------------------------------------------------------
"| Elm
"+--------------------------------------------------------------------------------
let g:elm_syntastic_show_warnings = 1


"+--------------------------------------------------------------------------------
"| typescript
"+--------------------------------------------------------------------------------
"let g:syntastic_typescript_checkers = ['tsuquyomi']
"let g:tsuquyomi_completion_detail = 1
"let g:autofmt_autosave = 1


"+--------------------------------------------------------------------------------
"| Laravel
"+--------------------------------------------------------------------------------
au BufEnter,BufNew *.blade.php :set syn=php

"+--------------------------------------------------------------------------------
"| Handlebars
"+--------------------------------------------------------------------------------
let g:mustache_abbreviations = 1

"+--------------------------------------------------------------------------------
"| Tera
"+--------------------------------------------------------------------------------
autocmd BufNewFile,BufRead *.tera set ft=jinja


"+--------------------------------------------------------------------------------
"| Syntastic
"+--------------------------------------------------------------------------------
let g:jsx_ext_required = 0
let g:syntastic_ignore_files = ['.*\.scss$', '.*.cr$']

"+--------------------------------------------------------------------------------
"| Terraform 
"+--------------------------------------------------------------------------------
let g:terraform_fmt_on_save=1

"+--------------------------------------------------------------------------------
"| Rust
"+--------------------------------------------------------------------------------
let g:rust_cargo_check_tests = 1


"+--------------------------------------------------------------------------------
"| Easy Align
"+--------------------------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign) 
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"+--------------------------------------------------------------------------------
"| coc
"+--------------------------------------------------------------------------------

" THIS IS TAKEN FROM THE COC README AS IS

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands - I REMOVED THIS BAD BOI
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


autocmd FileType markdown let b:coc_suggest_disable = 1



" Ocaml
if executable('opam')
  let g:opamshare=substitute(system('opam config var share'),'\n$','','''')
  if isdirectory(g:opamshare."/merlin/vim")
    execute "set rtp+=" . g:opamshare."/merlin/vim"
  endif
endif

" Flutter
let g:dart_format_on_save = 1
let dart_html_in_string=v:true
let g:dart_style_guide = 2

"+--------------------------------------------------------------------------------
"| Writing
"+--------------------------------------------------------------------------------
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft', 'autoformat': 1})
                            \ | call lexical#init()
                            \ | call litecorrect#init()
augroup END

