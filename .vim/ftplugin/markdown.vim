set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=99
"set complete+=kspell
"set spell


"映射标题
:map <M-F1> ^i#<Esc>$a#<Esc>i
:map <M-F2> ^i##<Esc>$a##<Esc>hi
:map <M-F3> ^i###<Esc>$a###<Esc>hhi

"md文件映射YAML
":map <F2> ggO---<Esc>olayout:<Esc>otitle:<Esc>otime:<Esc>ocategory:<Esc>o---<Esc>ggjA
"



function! DateInsert()
	call cursor(7,1)
	if search('Modified') != 0
		let line = line('.')
		call setline(line,"Modified: " . strftime("%Y-%m-%d %H:%M"))
	endif
endfunction

function! TitleInsert()
	call setline(1,"Title: ")
	call append(1,"Date: " . strftime("%Y-%m-%d %H:%M"))
    call append(2,"Modified: ". strftime("%Y-%m-%d %H:%M"))
	call append(3,"Category: ")
	call append(4,"Keywords: ")
	call append(5,"Tags: ")
	call append(6,"Summary: ")
	call append(7,"Slug: ")
	call append(8,"Comment_id:")
	call append(9,"status: draft")
endfunction

function! ToHtml()
	exec 'w'
	exec "!pandoc  -s -S --self-contained -c style.css % -o %<.html "
endfunction

function! ToPdf0()
	exec 'w'
	exec "!pandoc  % -o %<.pdf --latex-engine=xelatex --template=pm-template.latex "
endfunction

function! ToPdf1()
	exec 'w'
	exec "!pandoc --smart % -o %<.pdf --latex-engine=xelatex --template=pm-template.latex --bibliography=%<.bib"
endfunction




:nmap <silent> <F2> :call TitleInsert()<CR>ggA
":nmap <silent> <F3> :call DiaryInsert()<CR>ggjjjA
"
:autocmd FileWritePre,BufWritePre *.md ks|call DateInsert()|'s

:nmap <silent> <F5> :call ToHtml()<CR>
:nmap <silent> <F6> :call ToPdf0()<CR>
:nmap <silent> <F7> :call ToPdf1()<CR>

:inoremap $ $$<ESC>i

:nmap <silent> <F8> :Voom markdown<CR>

:nmap <silent> <F3> :call ReportInsert()<CR>ggjjjA

auto VimEnter * :Voom markdown
"wincmd p
auto VimEnter * wincmd w
:set textwidth=60 fo+=mM

