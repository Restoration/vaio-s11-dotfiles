"AUTHOR:   Atsushi Mizoue <asionfb@gmail.com>
"WEBSITE:  https://github.com/AtsushiM/search-parent.vim
"VERSION:  0.1
"LICENSE:  MIT

if exists("g:loaded_auto_make")
    finish
endif
let g:loaded_auto_make = 1

let s:save_cpo = &cpo
set cpo&vim

let &cpo = s:save_cpo
unlet s:save_cpo
