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


function! PdfLatex()
	exec "w"
	exec ":silent !del %<.pdf"
	exec ":silent !pdfLatex %"
	exec ":silent !del %<.pdf"
	exec ":silent !bibtex %<.aux %"
	exec ":silent !pdfLatex %"
	exec ":silent !del %<.pdf"
	exec ":silent !pdfLatex %"
endfunction

:nmap <F5> :call PdfLatex()<CR>
:nmap <F6> :!pdflatex %<CR>

auto VimEnter * :Voom latex

:nmap <silent> <F8> :Voom latex<CR>
