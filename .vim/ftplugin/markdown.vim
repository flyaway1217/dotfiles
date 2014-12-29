set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=99

"映射代码区段
:map <S-h> o{% highlight %}<Esc>o{% endhighlight %}<Esc>khhi
"映射公式区段
:map <C-n> o$$<Esc>o\begin{equation}<Esc>o\end{equation}<Esc>o$$<Esc>kO

"映射标题
:map <M-F1> ^i#<Esc>$a#<Esc>i
:map <M-F2> ^i##<Esc>$a##<Esc>hi
:map <M-F3> ^i###<Esc>$a###<Esc>hhi

"md文件映射YAML
":map <F2> ggO---<Esc>olayout:<Esc>otitle:<Esc>otime:<Esc>ocategory:<Esc>o---<Esc>ggjA


function! TitleInsert()
	call setline(1,"---")
	call append(1,"layout: post")
	call append(2,"time: " . strftime("%Y-%m-%d"))
	call append(3,"title: ")
	call append(4,"category: ")
	call append(5,"keywords: ")
	call append(6,"tags: ")
	call append(7,"description: ")
	call append(8,"---")
endfunction

function! ReportInsert()
	call setline(1,"#工作安排")
	call append(1,"#工作进展")
	call append(2,"#遇到的问题")
	call append(3,"#思考总结")
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







:nmap <silent> <F2> :call TitleInsert()<CR>ggjjjA
":nmap <silent> <F3> :call DiaryInsert()<CR>ggjjjA

:nmap <silent> <F5> :call ToHtml()<CR>
:nmap <silent> <F6> :call ToPdf0()<CR>
:nmap <silent> <F7> :call ToPdf1()<CR>


:nmap <silent> <F8> :Voom pandoc<CR>

:nmap <silent> <F3> :call ReportInsert()<CR>ggjjjA

:nmap <silent> image  i![<ESC>A(/assets/image/posts/<ESC>a

auto VimEnter * :Voom pandoc
"wincmd p
auto VimEnter * wincmd w


