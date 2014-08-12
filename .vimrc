set nocompatible "与vi不一致
set nu
set hlsearch
""'set mouse=n
syntax on
filetype off
:colorscheme pablo " koehler elflord
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set rtp+=~/.vim/bundle/vundle/ "载入特定目录插件
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'
set encoding=utf8
let &termencoding=&encoding
set fileencodings=utf-8,gb18030,gbk,gb2312,big5
set tags=tags;
set autochdir
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  "
"set rtp+=$HOME/.vim/bundle/vundle/ "Windows下
call vundle#rc()
"plugin 
"vimscripts账号下的项目直接填写名称即可
Bundle 'snipMate'
"其它需填写用户/资源名称
Bundle 'gmarik/vundle'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'The-NERD-tree'
""Bundle 'Yggdroot/indentLIne'
Bundle 'gregsexton/gitv'
"非github上资源
"Bundle 'git://git.wincent.com/command-t.git'
"indent
"Bundle 'php.vim-html-enhanced'
"color
Bundle 'Lucius'

"auto complete
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

function CloseBracket()
	if match(getline(line('.') + 1), '\s*}') < 0
		return "\<CR>}"
	else
		return "\<Esc>j0f}a"
	endif
endf

function QuoteDelim(char)
	let line = getline('.')
	let col = col('.')
	if line[col - 2] == "\\"
		"Inserting a quoted quotation mark into
		"the string
		return a:char
	elseif line[col - 1] == a:char
		"Escaping out of the string
		return "\<Right>"
	else
		"Starting a string
		return a:char.a:char."\<Esc>i"
	endif
endf

filetype plugin indent on
