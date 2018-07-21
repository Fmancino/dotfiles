
"source settings
source ~/.vim/start_files/standard_settings.vim
source ~/.vim/start_files/flags.vim
source ~/.vim/start_files/personal_settings.vim
if g:fma_plugins == 1
    source ~/.vim/start_files/plugins.vim
endif
source ~/.vim/start_files/keymaps.vim
source ~/.vim/start_files/autocommands.vim
source ~/.vim/start_files/sensible.vim


" let g:pathogen_disabled = []
" call add(g:pathogen_disabled, 'YouCompleteMe')
" call add(g:pathogen_disabled, 'syntastic')
" if has ("gui_running")
    " call add(g:pathogen_disabled, 'vim-tmux-navigator')
" else
    " call add(g:pathogen_disabled, 'vim-airline')
" endif
" call add(g:pathogen_disabled, 'ctrlp')
" call add(g:pathogen_disabled, 'ctrlp-py-matcher')



" in diff mode we use the spell check keys for merging
"if &diff
"  ” diff settings
"  map <Down> ]c
"  map <Up> [c
"  map <Left> do
"  map <Right> dp
"  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
"else
"  " spell settings
"  :setlocal spell spelllang=en
"  " set the spellfile - folders must exist
"  set spellfile=~/.vim/spellfile.add
"  map <M-Down> ]s
"  map <M-Up> [s
"endif







