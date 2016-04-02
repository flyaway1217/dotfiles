if exists("b:tex_ftplugin")
	finish
endif

set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=99


function! Pdf()
	exec "w"
	exec ":silent !xelatex %"
	exec ":silent !bibtex %<.aux %"
	exec ":silent !xelatex %"
	exec ":silent !xelatex %"
endfunction

:nmap <F5> :!xelatex %<CR>

auto VimEnter * :Voom latex

:nmap <silent> <F8> :Voom latex<CR>
