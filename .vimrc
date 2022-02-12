" Use spaces instead of tabs
set expandtab

" Be smart when using tabkey
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Enable filetype plugins
filetype plugin on
filetype indent on


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines



" Set to auto read when a file is changed from the outside
set autoread

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Enable syntax highlighting
syntax enable 

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
"set noswapfile

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

filetype plugin indent on
syntax on

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set path+=**
set wildmenu

let g:netrw_banner=0

" Shows relative line numbers, with the actual line number instead of 0
set number
set rnu

let g:mkdp_refresh_slow=1
let g:mkdp_markdown_css='home/ed/.vim/github-markdown.css'

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dracula/vim', { 'as': 'dracula' }
  
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()

colorscheme dracula

nnoremap Y "+y
vnoremap Y "+y
nnoremap yY ^"+y$

map `` <Nop>
map `a <Nop>
map `0 <Nop>
map `" <Nop>
map `. <Nop>
set nofoldenable
let g:snipMate = { 'snippet_version' : 1 }
