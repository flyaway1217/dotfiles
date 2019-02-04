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
:inoremap $ $$<ESC>i

auto VimEnter * :Voom latex
auto VimEnter * wincmd w

:nmap <silent> <F8> :Voom latex<CR>

:nmap <silent> math i<ESC>A\begin{equation<ESC>o\end{equation<ESC>k<ESC>o

:set textwidth=60 fo+=mM
