" Global flags used for costum settings (can be changed often)

"Standard values for flags:  0 == false, 1 == true

" Use plugins
let g:fma_plugins = 1

" Used for servers where i do not have administator rights
let g:fma_user = 0

" Defines a terminal environment that does not support many features (use virgin
" vim)
if (has("gui_running"))
    let g:fma_badTerminal = 0 "if gui is running you are not on a terminal
else
    let g:fma_badTerminal = 0 "up to the user to specify if the terminal is bad
endif

"disable plugins for bad terminal
if (g:fma_badTerminal == 1)
    let g:fma_plugins = 0 " 0 == false, 1 == true
endif

" Use or not use you complete me plugin (heavy and difficult to install in certain enviroments)
let g:fma_useYCM = 1

if has('nvim')
    "set nvim spcific flags
else
    "set vim specific flags
    let g:fma_useYCM = 0 " Do not use you-complete-me
endif

if (g:fma_user == 1) "connecting on a server I am not admistrating
    let g:fma_useYCM = 0 " Do not use you-complete-me
endif

