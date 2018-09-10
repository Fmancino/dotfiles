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

Plug 'tpope/vim-dispatch'
noremap <leader>b :Make<CR>

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'

Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" Plug 'tpope/vim-surround'
" Plug 'keith/swift.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'tpope/vim-vinegar'

" Unmanaged plugin (manually installed and updated)
Plug '~/.vim/bundle/a'
Plug '~/.vim/bundle/gtags'

if has('nvim')
    " PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run install script
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    " Both options are optional. You don't have to install fzf in ~/.fzf
    " and you don't have to run install script if you use fzf only in Vim.
    Plug 'neovimhaskell/haskell-vim'
    Plug 'kassio/neoterm'
    Plug 'kchmck/vim-coffee-script'
    Plug 'radenling/vim-dispatch-neovim'
    Plug 'vim-python/python-syntax'
    Plug 'python-mode/python-mode', { 'branch': 'develop' }
    if g:fma_useMiniYank == 1
        Plug 'bfredl/nvim-miniyank'
        " miniyank support
        map p <Plug>(miniyank-autoput)
        map P <Plug>(miniyank-autoPut)
        map <leader>x <Plug>(miniyank-cycle)
        map <Leader>c <Plug>(miniyank-tochar)
        map <Leader>l <Plug>(miniyank-toline)
        " map <Leader>b <Plug>(miniyank-toblock)
    endif
endif

if g:fma_useYCM == 1
    Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
endif
call plug#end()

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

autocmd FileType * unlet! g:airline#extensions#whitespace#checks
autocmd FileType markdown let g:airline#extensions#whitespace#checks = [ 'indent' ]
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
nnoremap <leader>gy :Ggrep "<C-R>""
nnoremap <leader>gv y:Ggrep "<C-R>""
nnoremap <leader>gr :Ggrep ""<left>
let g:syntastic_cpp_checkers = ['gcc', 'clang_check', 'clang_tidy', 'cpplint' ]
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_include_dirs = [ '../inc', '../if', 'inc', 'if' ]
let g:syntastic_cpp_compiler_options = ' -std=c++0x'
" let g:syntastic_cpp_auto_refresh_includes = 1

" load the man plugin automatically
runtime! ftplugin/man.vim
