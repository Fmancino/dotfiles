" to make like vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

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

" Plug plugin
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

call plug#begin('~/.vim/plugged')

" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " Both options are optional. You don't have to install fzf in ~/.fzf
  " and you don't have to run install script if you use fzf only in Vim.

Plug 'vim-airline/vim-airline'
Plug 'neovimhaskell/haskell-vim'

Plug 'kassio/neoterm'
Plug 'kchmck/vim-coffee-script'
Plug 'rhysd/nyaovim-markdown-preview'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'vim-python/python-syntax'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'bfredl/nvim-miniyank'
call plug#end()


map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>x <Plug>(miniyank-cycle)
map <Leader>c <Plug>(miniyank-tochar)
map <Leader>l <Plug>(miniyank-toline)
map <Leader>b <Plug>(miniyank-toblock)

" for python-syntax
let g:python_highlight_all = 1
