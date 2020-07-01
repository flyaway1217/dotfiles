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


function! TitleInsert()
	call setline(1,"Title: ")
	call append(1,"Date: " . strftime("%Y-%m-%d"))
	call append(2,"Category: ")
	call append(3,"Keywords: ")
	call append(4,"Tags: ")
	call append(5,"Summary: ")
	call append(6,"Slug: ")
	call append(7,"Comment_id:")
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
