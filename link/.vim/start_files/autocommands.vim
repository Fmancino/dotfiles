autocmd QuickFixCmdPost *grep* cwindow

autocmd bufnewfile *.sh so ~/.vim/templates/bash_header.txt
autocmd bufnewfile *.sh exe "1," . 10 . "g/FILENAME:.*/s//FILENAME: " .expand("%")
autocmd bufnewfile *.sh exe "1," . 10 . "g/CREATION DATE:.*/s//CREATION DATE: " .strftime("%d-%m-%Y")
autocmd bufnewfile *.sh :normal G
autocmd Bufwritepre,filewritepre *.sh execute "normal ma"

autocmd Bufwritepre,filewritepre *.sh exe "1," . 10 . "g/LAST MODIFIED:.*/s/LAST MODIFIED:.*/LAST MODIFIED: " .strftime("%c")
autocmd bufwritepost,filewritepost *.sh execute "normal `a"

autocmd bufnewfile *.py so ~/.vim/templates/python3_header.txt

augroup quickfix
    autocmd!
    autocmd FileType qf setlocal nospell
augroup END

