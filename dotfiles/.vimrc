
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
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('mattn/emmet-vim')
"call dein#add('AtsushiM/search-parent.vim')
"call dein#add('AtsushiM/sass-compile.vim')
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
"let g:sass_compile_auto = 1
"let g:sass_compile_cdloop = 5
"let g:sass_compile_cssdir = ['css', 'stylesheet']
"let g:sass_compile_file = ['scss', 'sass']
"let g:sass_compile_beforecmd = ''
"let g:sass_compile_aftercmd = ''
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

colorscheme archery
"colorscheme citylights
set showtabline=2
set termguicolors
set t_Co=25
let g:airline_theme = 'archery'

