set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmark/vundle'
"Bundle 'vim-pandoc/vim-pandoc'

Bundle 'vim-scripts/The-NERD-tree'

Bundle 'vim-scripts/VOoM'
Bundle 'Yggdroot/indentLine'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdcommenter'
Bundle "moll/vim-bbye"
Bundle "tmhedberg/SimpylFold"
"Bundle 'vim-scripts/winmanager'
"Bundle 'nathanaelkane/vim-indent-guides'


"Bundle 'https://github.com/tpope/vim-fugitive.git'
"Bundle 'https://github.com/msanders/snipmate.vim.git'
"Bundle 'https://github.com/tpope/vim-surround.git'
"Bundle 'https://github.com/tpope/vim-git.git'
Bundle 'https://github.com/ervandew/supertab.git'
Bundle 'https://github.com/rizzatti/dash.vim.git'
"Bundle 'https://github.com/kshenoy/vim-signature.git'
Bundle 'https://github.com/majutsushi/tagbar.git'

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


set showmatch
:inoremap ( ()<ESC>i
:inoremap { {}<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap $ $$<ESC>i


au FileType python set omnifunc=pythoncomplete#Complete
:let g:SuperTabDefaultCompleteType="context"
":let g:pep8_map='<Leader>8'



:nmap <silent> <F10> :NERDTree<CR>
:nmap <silent> <F9> :NERDTreeClose<CR>

"configuration for the NERD
let NERDChristmasTree=1
let NERDTreeShowBookmarks=1
let NERDTreeAutoCenter=1
let NERDTreeWinPos = 'right'
let NERDTreeShowFiles=1
let NERDTreeShowLineNumbers=1
auto VimEnter * NERDTree

let g:indentLine_color_term=239

auto VimEnter * wincmd w


"BBye
nnoremap bd :Bd<CR>


" airline设置
set laststatus=2
" 使用powerline打过补丁的字体
"let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap <c-o> :bp<CR>
nnoremap <c-p> :bn<CR>

