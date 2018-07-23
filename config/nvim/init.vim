" to make like vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/.vimrc

" nice terminal mode
tnoremap <Esc> <C-\><C-n>
:tnoremap <C-h> <C-\><C-N><C-w>h
:tnoremap <C-j> <C-\><C-N><C-w>j
:tnoremap <C-k> <C-\><C-N><C-w>k
:tnoremap <C-l> <C-\><C-N><C-w>l
:inoremap <C-h> <C-\><C-N><C-w>h
:inoremap <C-j> <C-\><C-N><C-w>j
:inoremap <C-k> <C-\><C-N><C-w>k
:inoremap <C-l> <C-\><C-N><C-w>l

au TermOpen * setlocal nospell
au TermOpen * setlocal nonumber
au TermOpen * setlocal norelativenumber


" miniyank support
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>x <Plug>(miniyank-cycle)
map <Leader>c <Plug>(miniyank-tochar)
map <Leader>l <Plug>(miniyank-toline)
map <Leader>b <Plug>(miniyank-toblock)

" for python-syntax
let g:python_highlight_all = 1

let $VISUAL = 'nvr -cc split --remote-wait'
