"""""""""""""""""""""""""
" pathogen
"""""""""""""""""""""""""
execute pathogen#infect()



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 显示相关  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu              " 显示行号  

set go=             " 不要图形按钮  

"color asmanian2     " 设置背景主题  

set guifont=Courier_New:h10:cANSI   " 设置字体  

syntax on           " 语法高亮  

autocmd InsertLeave * se nocul  " 用浅色高亮当前行  

autocmd InsertEnter * se cul    " 用浅色高亮当前行  

set ruler           " 显示标尺  

set showcmd         " 输入的命令显示出来，看的清楚些  

set showmode

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  

set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  

"set foldenable      " 允许折叠  

set foldmethod=manual   " 手动折叠  

set background=dark "背景使用黑色 

set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  

" 显示中文帮助

if version >= 603

    set helplang=cn

    set encoding=utf-8

endif

" 设置配色方案

colorscheme solarized

" colorscheme freya

"字体 

"if (has("gui_running")) 

"   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 

"endif 


 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

set termencoding=utf-8

set encoding=utf-8

set fileencodings=ucs-bom,utf-8,cp936

set fileencoding=utf-8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"键盘命令

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""实用设置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 不要使用vi的键盘模式，而是vim自己的

set nocompatible

" 语法高亮

set syntax=on

" 在处理未保存或只读文件的时候，弹出确认

set confirm

" 自动缩进

set autoindent

set cindent

" Tab键的宽度

set tabstop=4

" 统一缩进为4

set softtabstop=4

set shiftwidth=4

" 不要用空格代替制表符

set noexpandtab

" 在行和段开始处使用制表符

set smarttab

" 显示行号

set number

" 历史记录数

set history=100

"禁止生成临时文件

set nobackup

set noswapfile

"搜索忽略大小写

set ignorecase

"搜索逐字符高亮

set hlsearch

set incsearch

"行内替换

set gdefault

"编码设置

set enc=utf-8

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"语言设置

set langmenu=zh_CN.UTF-8

set helplang=cn

" 我的状态行显示的内容（包括文件类型和解码）

"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" 总是显示状态行

set laststatus=2

" 命令行（在状态行下）的高度，默认为1，这里是2

set cmdheight=2

" 侦测文件类型

filetype on

" 载入文件类型插件

filetype plugin on

" 为特定文件类型载入相关缩进文件

filetype indent on

" 保存全局变量

set viminfo+=!

" 带有如下符号的单词不要被换行分割

set iskeyword+=_,$,@,%,#,-

" 字符间插入的像素行数目

set linespace=0

" 增强模式中的命令行自动完成操作

set wildmenu

" 使回格键（backspace）正常处理indent, eol, start等

set backspace=2

" 允许backspace和光标键跨越行边界

set whichwrap+=b,s,<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）

set mouse=a

set selection=exclusive

set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过

set report=0

" 在被分割的窗口间显示空白，便于阅读

set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号

set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）

set matchtime=1

" 光标移动到buffer的顶部和底部时保持3行距离

set scrolloff=3

" 为C程序提供自动缩进

set smartindent

" 高亮显示普通txt文件（需要txt.vim脚本）

au BufRead,BufNewFile *  setfiletype txt

au BufRead,BufNewFile *.p4      set filetype=p4

filetype plugin indent on 

"打开文件类型检测, 加了这句才可以用智能补全

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""
" Ctags related
"""""""""""""""""""""""""""""
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

set tags=tags " set tags to the newly generated tags
set tags+=./tags
" set tags+= " add additonal tags files

"""""""""""""""""""""""""""""
" save last cursor
"""""""""""""""""""""""""""""

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

map <C-n> :tabn<CR>
map <C-p> :tabp<CR>


""""""""""""""""""""""""""""
"NERDTree
""""""""""""""""""""""""""""

map <C-f> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""
"OmniCppComplete
""""""""""""""""""""""""""""
" 按下F3自动补全代码，注意该映射语句后不能有其他字符，包括tab；否则按下F3会自动补全一些乱码
imap <F3> <C-X><C-O>
" 按下F2根据头文件内关键字补全
imap <F2> <C-X><C-I>

set completeopt=menu,menuone  
let OmniCpp_MayCompleteDot=1			"打开  . 操作符
let OmniCpp_MayCompleteArrow=1			"打开 -> 操作符
let OmniCpp_MayCompleteScope=1			"打开 :: 操作符
let OmniCpp_NamespaceSearch=1			"打开命名空间
let OmniCpp_GlobalScopeSearch=1  
let OmniCpp_DefaultNamespace=["std"]  
let OmniCpp_ShowPrototypeInAbbr=1		"打开显示函数原型
let OmniCpp_SelectFirstItem = 2			"自动弹出时自动跳至第一个

" mapping
inoremap <expr> <S-J> pumvisible()?"<C-N>":"<S-J>"
inoremap <expr> <S-K> pumvisible()?"<C-P>":"<S-K>"


" ack-related
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
	let g:ackhighlight = 1
endif

"let g:ack_qhandler = "botright copen15"
"let g:ack_autoclose = 1
"let g:ack_use_cword_for_empty_search = 1

cnoreabbrev Ack Ack!
map <F4> :Ack <CR>

"gocode
imap <C-f> <C-x><C-o>

"tagbar
nmap <F9> :TagbarToggle<CR>


let mapleader = "\<Space>"

nnoremap <Leader>t <C-t>
nnoremap <Leader>o <C-o>
nnoremap <Leader>] <C-]>
nnoremap <Leader>b <S-$>
nnoremap <Leader>f <S-^>

"""""""""""""""""python prediction
let g:pydiction_location = '~/.vim/after/ftplugin/complete-dict'
