" 设置 leader 键
let mapleader = ","

" 设置颜色主题
color pablo

" 打开语法高亮
syntax on

" 关闭自动换行
set nowrap"

" 显示行号
set number

" 启用自动缩进
set autoindent
set smartindent

" 设置制表符为4个空格
set tabstop=4
set shiftwidth=4
set expandtab

" 设置搜索时忽略大小写
set ignorecase

" 但在大写时区分大小写
set smartcase

" 启用行尾空白的显示
set list
set listchars=tab:»\ ,trail:·

" 高亮当前行
set cursorline

" 启用鼠标支持
set mouse=
" 定义切换鼠标模式的映射
noremap <leader>m :call ToggleMouseMode()<CR>
" 定义切换鼠标模式的函数
function! ToggleMouseMode()
    if &mouse == ""
        set mouse=a
        echo "mouse mode on"
    else
        set mouse=
        echo "mouse mode off"
    endif
endfunction

" 禁用交换文件
set noswapfile

" 禁用备份文件
set nobackup
set nowritebackup

" 对于较大的文件，禁用备份以提高性能
autocmd BufReadPre * if getline(1) =~# '^\ufeff' | execute '1delete' | endif

" 状态行显示模式
set laststatus=2
set statusline=%F%m%r%h%w\ %=[%{&ff}]%{strftime('%Y-%m-%d\ %H:%M')}%y

" 确保新窗口的标签页保持一致的显示
set switchbuf=useopen,usetab,newtab

" 确保在打开折叠或跳转时，自动显示关闭的行
set foldopen=all

" 让 Home 和 End 键在行模式中正常工作
map <Home> ^[g0
map <End> ^[g$

" 快速退出
map <leader>q :q<CR>

" 快速保存
map <leader>w :w<CR>

" 快速保存并退出
map <leader>x :x<CR>

" 快速关闭其他窗口
map <leader>o :only<CR>

" 插入模式下使用 Ctrl+H 作为退格键
inoremap <C-h> <BS>

" 支持撤销历史记录超过单个会话
set undofile
set undodir=~/.vim/undofiles
" 创建撤销目录
silent !mkdir -p $HOME/.vim/undofiles

" 自动读取外部更改
set autoread

" 插入模式下自动完成括号
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>

" 设置文件编码为 UTF-8
set encoding=utf-8

" 设置文件读写编码为 UTF-8
set fileencoding=utf-8

" 设置文件读取时的编码检测
set fileencodings=utf-8,gb2312,gbk,gb18030

" 设置终端编码为 UTF-8
set termencoding=utf-8

" 保存和恢复光标位置
augroup RememberLastCursorLocation
    autocmd!
    " 保存光标位置（当文件被写入时）
    autocmd BufWritePost * mkview
    " 恢复光标位置（当进入文件时）
    autocmd BufReadPost * silent! loadview
augroup END

