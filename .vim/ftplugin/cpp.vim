"func! CompilRun()
    "exec "w"
    "exec "g++ --version"
    "exec "g++ % -o %<"
    "exec " ./%<"
    "exec "del ./%<"
"endfunc


"func! Debug()
"    exec "w"
"    exec "!g++ % -g -o %<"
"    exec "!gbd %<"
"endfunc

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
    call append(7,"Using cpp.vim]]")
    call append(11,'*/')
endfunction


function! DateInsert()
    call cursor(7,1)
    if search("Last modified") != 0
	let line = line(".")
	call setline(line,"Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
    endif
endfunction


:autocmd FileWritePre,BufWritePre *.cpp ks|call DateInsert()|'s
::nmap <silent> <F2> :call TitleInsert()<CR>ggjjA
:nmap <silent> <F5> :call CompilRun()<CR>
:nmap <silent> <C-F5> :call Debug()<CR>
:nmap <silent> <C-m> o//
