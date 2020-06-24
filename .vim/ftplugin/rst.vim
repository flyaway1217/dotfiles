set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=99


:nmap <silent> <F8> :Voom rest<CR>
auto VimEnter * :Voom rest 
"wincmd p
auto VimEnter * wincmd w


:set textwidth=60 fo+=mM
