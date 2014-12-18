"---------------------------------------------
"for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmark/vundle'
"Bundle 'vim-pandoc/vim-pandoc'

Bundle 'vim-scripts/The-NERD-tree'

Bundle 'vim-scripts/VOoM'
Bundle 'Yggdroot/indentLine'
"Bundle 'nathanaelkane/vim-indent-guides'


"Bundle 'https://github.com/tpope/vim-fugitive.git'
"Bundle 'https://github.com/msanders/snipmate.vim.git'
"Bundle 'https://github.com/tpope/vim-surround.git'
"Bundle 'https://github.com/tpope/vim-git.git'
Bundle 'https://github.com/ervandew/supertab.git'
Bundle 'https://github.com/rizzatti/dash.vim.git'
"Bundle 'https://github.com/sontek/minibufexpl.vim.git'
"Bundle 'https://github.com/wincent/Command-T.git'
"Bundle 'https://github.com/mitechie/pyflakes-pathogen.git'
"Bundle 'https://github.com/nathanaelkane/vim-indent-guides'
"Bundle 'https://github.com/mileszs/ack.vim.git'
"Bundle 'https://github.com/sjl/gundo.vim.git'
"Bundle 'https://github.com/fs111/pydoc.vim.git'
"Bundle 'https://github.com/vim-scripts/pep8.git'
"Bundle 'https://github.com/alfredodeza/pytest.vim.git'
"Bundle 'https://github.com/reinh/vim-makegreen'
"Bundle 'https://github.com/vim-scripts/TaskList.vim.git'
"Bundle 'https://github.com/sontek/rope-vim.git'

filetype plugin indent on

"Brief help
" :BundleList		-list configured bundles
" :BundleInstall(!)	-install(updte) bundles
" :BundleSearch(!)foo	- search(or refresh cache first) for foo
" :BundleClean(!)	- confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
"
"end of vundle
"-----------------------------------------------------------


set number
colorscheme desert
filetype plugin indent on
syntax enable
syntax on

set cursorcolumn
set cursorline

set backspace=indent,eol,start

set showcmd
set ruler

:map G Gzz


"编码方式
set encoding=utf8
set fileencoding=utf8
set fileencodings=utf8
set formatoptions+=m
set formatoptions+=B

set tabstop=8
set softtabstop=4
set shiftwidth=4

:map <c-j> <c-w>j
:map <c-k> <c-w>k
:map <c-l> <c-w>l
:map <c-h> <c-w>h


au FileType python set omnifunc=pythoncomplete#Complete
:let g:SuperTabDefaultCompleteType="context"
":let g:pep8_map='<Leader>8'



:nmap <silent> <F10> :NERDTree<CR>
:nmap <silent> <F9> :NERDTreeClose<CR>

let NERDChristmasTree=1
let NERDTreeWinPos = 'right'


let g:indentLine_color_term=239

