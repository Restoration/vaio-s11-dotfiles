"AUTHOR:   Atsushi Mizoue <asionfb@gmail.com>
"WEBSITE:  https://github.com/AtsushiM/search-parent.vim
"VERSION:  0.1
"LICENSE:  MIT

let s:save_cpo = &cpo
set cpo&vim

let g:search_parent_plugindir = expand('<sfile>:p:h:h').'/'

if !exists("g:search_parent_cdloop")
    let g:search_parent_cdloop = 5
endif

function! searchparent#_Core(key, check)
    let key = a:key
    let check = a:check
    let i = 0
    let dir = expand('%:p:h').'/'
    let hit = 0

    if type(key) != type([])
        unlet key
        let key = [a:key]
    endif

    while i < g:search_parent_cdloop
        for e in key
            if eval(check.'(dir.e)') != ''
                let hit = 1
                break
            endif
        endfor

        if hit != 1
            let i = i + 1
            let dir = dir.'../'
        else
            break
        endif
    endwhile

    if i != g:search_parent_cdloop
        return fnamemodify(dir.e, ":p")
    endif
    return ''
endfunction

function! searchparent#File(filename)
    return searchparent#_Core(a:filename, 'filereadable')
endfunction

function! searchparent#Dir(dirname)
    return searchparent#_Core(a:dirname, 'isdirectory')
endfunction

function! searchparent#Any(key)
    return searchparent#_Core(a:key, 'glob')
endfunction

let &cpo = s:save_cpo
