" Global flags used for costom settings (can be changed by exporting flags)

"Standard values for flags:  0 == false, 1 == true

" Use plugins
let g:fma_plugins = !exists("$VIM_FMA_NO_PLUGINS")

" Defines a terminal environment that does not support many features (use virgin
" vim)
if (has("gui_running"))
    let g:fma_badTerminal = exists("$VIM_FMA_BADTERMIAL") "if gui is running you are not on a terminal
    let g:fma_mittyTerminal = exists("$VIM_FMA_MINTTY")
else
    let g:fma_badTerminal = exists("$VIM_FMA_BADTERMIAL") "up to the user to specify if the terminal is bad
    let g:fma_mittyTerminal = exists("$VIM_FMA_MINTTY")
endif

"disable plugins for bad terminal
if (g:fma_badTerminal == 1)
    let g:fma_plugins = 0 " 0 == false, 1 == true
endif

" Use or not use you complete me plugin (heavy and difficult to install in certain enviroments)
if exists("$VIM_FMA_USE_YCM")
    let g:fma_useYCM = $VIM_FMA_USE_YCM "has to be specified to zero or one
else
    if has('nvim')
        let g:fma_useYCM = 1 "use it as a standard for nvim
    else
        "set vim specific flags
        let g:fma_useYCM = 0 " Do not use you-complete-me as a standard for vim
    endif
endif

" Use or not use mini yank (evaluating it)
let g:fma_useMiniYank = exists($VIM_FMA_UMY)

