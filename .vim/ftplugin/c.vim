func! CompilRun()
	exec "!clear"
	exec "w"
	exec "!gcc % -o %< -lstdc++"
	exec "!./%<"
	exec "!rm %<"
endfunc

func! Debug()
	exec "w"
	exec "!gcc % -o %<"
	exec "!gdb %<"
endfunc
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

function! TitleInsert()
call setline(1,"//coding:utf-8")
call append(1,'/*')
call append(2,"Program: ")
call append(3,"Description: ")
call append(4,"Author: Flyaway - flyaway1217@gmail.com")
call append(5,"Date: " . strftime("%Y-%m-%d %H:%M:%S"))
call append(6,"Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
call append(7,"GCC version: 4.7.3")
call append(8,'*/')
endfunction

function! DateInsert()
"normal ms
call cursor(7,1)
if search('Last modified') != 0
	let line = line('.')
	call setline(line,"Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
endif
"normal `s
endfunction

:autocmd FileWritePre,BufWritePre *.cpp ks|call DateInsert()|'s
:nmap <silent> <F2> :call TitleInsert()<CR>ggjjA
:nmap <silent> <F5> :call CompilRun()<CR>
:nmap <silent> <C-F5> :call Debug()<CR>
:nmap <silent> <C-m> o//
