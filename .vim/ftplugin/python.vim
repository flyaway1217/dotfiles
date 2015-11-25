if exists("b:python_ftplugin")
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

function! DateInsert()
	call cursor(7,1)
	if search('Last modified') != 0
		let line = line('.')
		call setline(line,"# Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
	endif
endfunction


function! TitleInsert()
	call setline(1,"# !/usr/bin/env python3")
	call append(1,"# -*- coding:utf-8 -*-")
	call append(2,"#")
	call append(3,"# Author: Flyaway - flyaway1217@gmail.com")
	call append(4,"# Blog: zhouyichu.com")
	call append(5,"#")
	call append(6,"# Python release: 3.4.1")
	call append(7,"#")
	call append(8,"# Date: " . strftime("%Y-%m-%d %H:%M:%S"))
	call append(9,"# Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
	call append(10,"")
	call append(11,'"""')
	call append(12,'"""')
	
endfunction


:autocmd FileWritePre,BufWritePre *.py ks|call DateInsert()|'s

:nmap <F2> :call TitleInsert()<CR>12Go
:nmap <F5> :!python3 %<CR>
:nmap <F6> :!python %<CR>
:nmap <C-n> iif __name__=='__main__':<Esc>o
:inoremap " """<ESC>o"""<ESC>O
:inoremap , , <ESC>a

auto VimEnter * :Voom python
"wincmd p
auto VimEnter * wincmd w


:nmap <silent> <F8> :Voom python<CR>

"设置代码折叠
set fdm=indent

"启动vim时关闭折叠代码
set nofoldenable


