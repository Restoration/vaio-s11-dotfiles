
"
"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

scriptencoding utf-8

"Basic Setting
"-----------------------------------------------------
set shortmess+=I
set number
set mouse=a
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
"set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set virtualedit=block
set whichwrap+=b,s,[,],<,>
set backspace=indent,eol,start
set wrapscan
set showmatch
set wildmenu
set formatoptions+=mM
set cursorline
set clipboard=unnamedplus
set nobackup


"Command Line
"-----------------------------------------------------
verbose set cmdheight=10

"Font
"-----------------------------------------------------
"set guifont=Liberation
"set guifontwide=Liberation
set guifont=Ricty\ Discord\ 12
set guifontwide=Ricty\ Discord\ 12

"GUI
"-----------------------------------------------------
set ruler
set wrap
set laststatus=2
set cmdheight=2
set showcmd
set title


"Character
"-----------------------------------------------------
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
"set fileformats=unix,dos,mac
set encoding=utf-8
set fileencodings=utf-8

"Keybind
"-----------------------------------------------------
nmap :tn  :tabnew<CR>
nmap :ex  :exit<CR>
nmap :ps  :split<CR>
nmap :vs  :vsplit<CR>
"nmap :nt  :NERDTree<CR>
nmap :nt  :NERDTreeTabsToggle<CR>
nmap :tm  :terminal<CR>
nmap :mc  :MultipleCursorsFind<CR>
nmap :tag :TagbarShowTag<CR>
"nmap ^E ^E,
nmap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>


 "____        _                  _
"/ ___| _ __ (_)_ __  _ __   ___| |_ ___
"\___ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
 "___) | | | | | |_) | |_) |  __/ |_\__ \
"|____/|_| |_|_| .__/| .__/ \___|\__|___/
              "|_|   |_|

"dein
"---------------------------------------------------
if &compatible

  set nocompatible

endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neocomplcache')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('mattn/emmet-vim')
call dein#add('AtsushiM/search-parent.vim')
call dein#add('AtsushiM/sass-compile.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('majutsushi/tagbar')
call dein#add('tpope/vim-fugitive')
call dein#add('reireias/vim-cheatsheet')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('vim-airline/vim-airline')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#end()


"vim-cheatsheet
"-----------------------------------------------------
let g:cheatsheet#cheat_file = '~/.vim/.cheatsheet.md'

"NeoSunippet
"-----------------------------------------------------
"Plugin key-mappings
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
let g:neosnippet#snippets_directory='~/.vim/neosnippet-snippets'

"neocomplcache
"-----------------------------------------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"emmet
"----------------------------------------------------
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
    \    'variables': {
    \      'lang': "en"
    \    },
    \   'indentation': '  '
    \ }

"sass
"---------------------------------------------------
""{{{
	let g:sass_compile_auto = 1
	let g:sass_compile_cdloop = 5
	let g:sass_compile_cssdir = ['css', 'stylesheet']
	let g:sass_compile_file = ['scss', 'sass']
	let g:sass_compile_beforecmd = ''
	let g:sass_compile_aftercmd = ''
"}}}



"Tagbar
"---------------------------------------------------
let g:tagbar_width = 30
let g:tagbar_autoshowtag = 1

"Autocomand
"---------------------------------------------------
"autocmd VimEnter * execute 'NERDTree'
"autocmd VimEnter * execute 'TagbarShowTag'
autocmd VimEnter * execute 'syntax on'

" let g:nerdtree_tabs_open_on_console_startup=1

"Colorscheme
"-----------------------------------------------------
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
augroup TransparentBG
        autocmd!
        autocmd Colorscheme * highlight Normal ctermbg=none
        autocmd Colorscheme * highlight NonText ctermbg=none
        autocmd Colorscheme * highlight LineNr ctermbg=none
        autocmd Colorscheme * highlight Folded ctermbg=none
        autocmd Colorscheme * highlight EndOfBuffer ctermbg=none
augroup END

"colorscheme archery
colorscheme citylights
set showtabline=2
set termguicolors
set t_Co=25
let g:airline_theme = 'archery'

