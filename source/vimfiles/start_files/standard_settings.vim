set nocompatible
filetype off

" set UTF-8 encoding
set fenc=utf-8
set termencoding=utf-8
set fileencoding=utf-8 " The encoding written to file.
if has("multi_byte")
  " if &termencoding == ""
    " let &termencoding = &encoding
  " endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  " Uncomment to have 'bomb' on by default for new files.
  " Note, this will not apply to the first, empty buffer created at Vim startup.
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif
let mapleader = " " "the <leader> map
