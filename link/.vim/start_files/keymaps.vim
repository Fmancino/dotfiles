
nnoremap <leader><space> :noh<cr>
nnoremap <leader>q :q<Enter>
nnoremap <leader>f :find *
nnoremap <leader>n :NERDTreeToggle<Enter>
nnoremap <leader>m "myiw:!get-merge <C-R>m<Enter>

" From vinegar.vim, minus the rest
nnoremap - :Ex<Enter>

inoremap <Tab> <C-N>

nnoremap <leader>cf :let @+=expand("%:p")<CR>    " Mnemonic: Copy File path
nnoremap <leader>yf :let @"=expand("%:p")<CR>    " Mnemonic: Yank File path
nnoremap <leader>fn :let @"=expand("%")<CR>      " Mnemonic: yank File Name

inor <C-D> <Right><Backspace>

" Go to function start
nnoremap <leader>s ?^\S<Enter>:noh<Enter>
" Enhanced keyboard mappings
"
" in normal  will save the file
nnoremap <leader>w :w<CR>

" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>


"mappping moving trought window
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H>  <C-W>h
noremap <C-L>  <C-W>l


noremap <C-Down>  <C-W>j
noremap <C-Up>  <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right>  <C-W>l

noremap <C-E>  4<C-E>
noremap <C-Y>  4<C-Y>

"Set hardmode"
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Add emacs style bindings:
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-P> <Up>
inoremap <C-N> <Down>
" "inoremap <C-K> <Esc>lDa
" "inoremap <C-U> <Esc>d0xi
" "inoremap <C-Y> <Esc>Pa
" "inoremap <C-X><C-S> <Esc>:w<CR>a

" Should be easy to exit insert mode!
inoremap <expr> <up> pumvisible() ? "\<up>" : "\<ESC><up>"
inoremap <expr> <down> pumvisible() ? "\<down>" : "\<ESC><down>"
inoremap <left> <ESC><left>
inoremap <right> <ESC><right>
inoremap jj <ESC>
inoremap kk <ESC>

" Do not like swedish keyboard for $
noremap € $
noremap ¤ $

" Fast navigation whith swedish keyboard
map å <c-]>

" Parenthesis easy to reach
map Ö {
map Ä }
map ö [
map ä ]
map gä g]
inoremap Ö {
inoremap Ä }
inoremap ö [
inoremap ä ]

inoremap ,å å
inoremap ,¨ ¨
inoremap ,ä ä
inoremap ,ö ö

inoremap Ö<CR> {<CR>}<ESC>O
inoremap {<CR> {<CR>}<ESC>O

nnoremap œ <C-o> " Go back with alt-o on swedish keyboard

" Search selected text
vnoremap <expr> // 'y/\V'.escape(@",'\').'<CR>'

"autoclose parenthesis
ino < <><left>
ino << <<

"do not need to press ESC to save and exit from insert mode
inoremap :wq <ESC>:wq<CR>
inoremap ZZ <ESC>:wq<CR>
inoremap <C-S> <ESC>:w<CR>
nnoremap <C-S> :w<CR>

"Copy paste to clipboard
nnoremap <Leader>p o<ESC>"+p
inoremap <C-V> <ESC>"+pa
cnoremap <C-V> <C-R>+

" Add a ; in the end of line
nnoremap <Leader>; $a;<ESC>


" Skip pressing o end esc all the time i need a space
nnoremap <Leader>O O<Esc>xxxj
nnoremap <Leader>o o<Esc>xxx
nnoremap <S-Enter> o<Esc>

" Import some emacs in the command mode:
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
"cnoremap <C-f>  <Right>
cnoremap <C-p>  <Up>
cnoremap <C-n>  <Down>
cnoremap <C-d>  <Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><C-w>

" get rid of trailing whitespaces
noremap <Leader>t :%s/\s\+$//e<CR>

