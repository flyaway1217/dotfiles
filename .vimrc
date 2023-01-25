set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Bundle 'gmarik/Vundle'
"Bundle 'vim-pandoc/vim-pandoc'

"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'

Plugin 'vim-voom/VooM'
"Plugin 'vimoutliner/vimoutliner'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'
"Plugin 'lokaltog/vim-powerline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'moll/vim-bbye'
"Plugin "tmhedberg/SimpylFold"
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/nathangrigg/vim-beancount.git'
"Plugin 'vim-scripts/winmanager'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
"Plugin 'waylan/python-markdown'
Plugin 'drmingdrmer/vim-syntax-markdown'

" Plugin 'https://github.com/moll/vim-bbye'
Plugin 'https://github.com/vim-scripts/svg.vim.git'
"Plugin 'zxqfl/tabnine-vim'
"Plugin 'valloric/youcompleteme'

"Plugin 'https://github.com/tpope/vim-fugitive.git'
"Plugin 'https://github.com/msanders/snipmate.vim.git'
"Plugin 'https://github.com/tpope/vim-surround.git'
"Plugin 'https://github.com/tpope/vim-git.git'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/rizzatti/dash.vim.git'
"Plugin 'https://github.com/kshenoy/vim-signature.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
"Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'fugalh/desert.vim'

"JavaScript"
"Plugin 'https://github.com/pangloss/vim-javascript.git'
"Plugin 'https://github.com/vim-latex/vim-latex.git'

"Plugin 'https://github.com/sontek/minibufexpl.vim.git'
"Plugin 'https://github.com/wincent/Command-T.git'
"Plugin 'https://github.com/mitechie/pyflakes-pathogen.git'
"Plugin 'https://github.com/nathanaelkane/vim-indent-guides'
"Plugin 'https://github.com/mileszs/ack.vim.git'
"Plugin 'https://github.com/sjl/gundo.vim.git'
"Plugin 'https://github.com/fs111/pydoc.vim.git'
"Plugin 'https://github.com/vim-scripts/pep8.git'
"Plugin 'https://github.com/alfredodeza/pytest.vim.git'
"Plugin 'https://github.com/reinh/vim-makegreen'
"Plugin 'https://github.com/vim-scripts/TaskList.vim.git'
"Plugin 'https://github.com/sontek/rope-vim.git'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
filetype plugin indent on
syntax enable
syntax on
set background=dark
colorscheme desert

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


" Recommended settings for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=["flake8", 'mypy']
let g:syntastic_json_checkers=["JSONLint"]
let g:syntastic_javascript_checkers=["jshint"]
let g:syntastic_rst_checkers=["sphinx"]
let g:syntastic_tex_checkers = ['lacheck']

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

let g:tex_conceal = ""


