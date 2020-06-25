autocmd QuickFixCmdPost *grep* cwindow

" for fancy configurations see:
" https://www.thegeekstuff.com/2008/12/vi-and-vim-autocommand-3-steps-to-add-custom-header-to-your-file/
autocmd bufnewfile *.sh so $FMA_VIMDIR/templates/bash_header.txt
autocmd bufnewfile *.sh exe "1," . 5 . "g/CREATION DATE:.*/s//CREATION DATE: " .strftime("%d-%m-%Y")
autocmd bufnewfile *.sh :normal G


autocmd bufnewfile *.py so $FMA_VIMDIR/templates/python3_header.txt

augroup quickfix
    autocmd!
    autocmd FileType qf setlocal nospell
augroup END
