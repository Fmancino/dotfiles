function! Codestyle()
    retab
    %s/\m\(\/\/\+<\?\)\([</]\|\s\|\n\)\@!/\1 /c
    %s/\m\([-=><]\|\s\)\@<!\([=<>]\?[=<>]\)\([=><]\|\s\|\n\)\@!/ \2 /gc
    %s/,\S\@=/, /gc
    %s/ ;/;/gc
endfunction
command! Codestyle execute "call Codestyle()"

function! FindInGitRepository(name)
    cex system('git-ls-quickfix ' . a:name)
    copen
endfunction
command! -range -nargs=1 F :call FindInGitRepository(<q-args>)

" DELETE BUFFERS-----------------------------------
" Do a :ls to see buffer numbers and them :x,ybd to delete buffers from number x to y
" from aswer by atomicules
" https://stackoverflow.com/questions/1534835/how-do-i-close-all-buffers-that-arent-shown-in-a-window-in-vim
function! DeleteInactiveBufs()
    "From tabpagebuflist() help, get a list of all buffers in all tabs
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    "Below originally inspired by Hara Krishna Dara and Keith Roberts
    "http://tech.groups.yahoo.com/group/vim/message/56425
    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
        "bufno exists AND isn't modified AND isn't in the list of buffers open in windows and tabs
            silent exec 'bwipeout' i
            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction
command! Bdi :call DeleteInactiveBufs()

