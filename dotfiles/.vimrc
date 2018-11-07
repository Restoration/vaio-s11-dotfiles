set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

" My Original
source ~/.vim/src/shortcuts.vim
source ~/.vim/src/snippets.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry


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

"Autocomand
"---------------------------------------------------
"autocmd VimEnter * execute 'NERDTree'
"autocmd VimEnter * execute 'TagbarShowTag'
autocmd VimEnter * execute 'syntax on'

" let g:nerdtree_tabs_open_on_console_startup=1

" close tag completion
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype php inoremap <buffer> </ </<C-x><C-o>
augroup END
