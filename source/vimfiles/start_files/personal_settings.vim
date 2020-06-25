" Operating systems: macunix unix win32 win32unix
if has('macunix')
    set guifont=Monaco:h13
else
    set guifont=Inconsolata\ 13
endif
" Maximum access to systems clipboard
set clipboard^=unnamed,unnamedplus

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"If you have a good terminal (or gui)
if g:fma_badTerminal == 0
    set list          " Display unprintable characters f12 - switches
    set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
    colo mymolo
    set spell
    set cursorline
endif

" set mouse=a "be able to use mouse
set colorcolumn=80

" to make quickfix work better
" set makeprg=vadduvill
" copen
set shell=bash

" read files when they change
set autoread

" save when anything happens
"set autowrite
"set autowriteall

" Set spelling on git commits
autocmd FileType gitcommit setlocal spell

set number
set relativenumber

" turn syntax highlighting on
set t_Co=256
syntax on

filetype plugin indent on

set modelines=0  "security issues

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
""command! MakeTags !ctags -R .
:set tags=.git/tags
" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags


set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
set showmatch
set hlsearch

" set a directory to store the undo history
set undodir=$FMA_VIMDIR/vimundo/

" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" use intelligent indentation for C
set smartindent

set ignorecase
set smartcase

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" End of line
set wrap
set textwidth=79
set formatoptions=qrn1

set wmh=0 "makes it possible to have a file window with only the name

if (g:fma_mittyTerminal == 1)
    let &t_ti.="\e[2 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[2 q"
    let &t_te.="\e[0 q"
endif
