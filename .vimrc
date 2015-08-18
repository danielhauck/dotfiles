set nocompatible

" filetype on
" filetype indent on
" filetype plugin on
" 
let mapleader=","


colorscheme elflord
syntax on

 set incsearch
" set paste
 set hlsearch
 set number
 set fileencoding=utf-8
 set encoding=utf-8
 set gdefault
 set showmatch                                           
 set noswapfile
 set tabstop=4
 set shiftwidth=4
 set backspace=indent,eol,start
 set ignorecase
 set commentstring=\ #\ %s 
 set ruler
set foldlevel=0
 set clipboard+=unnamed
 set smarttab
set expandtab
set softtabstop=4
set autoindent
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
 set smartindent
 set laststatus=2
" 
"" Showing line numbers and length
"set number  " show line numbers
"set tw=79   " width of document (used by gd)
"set nowrap  " don't automatically wrap on load
"set fo-=t   " don't automatically wrap text when typing
"set colorcolumn=80
" "highlight ColorColumn ctermbg=233
" if exists('+colorcolumn')
"       set colorcolumn=80
" else
"       au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif
" 
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
autocmd BufWritePre *.pp normal m`:! puppet parser validate %`

""autocmd eventname pattern command

autocmd BufRead,BufWritePre *.html normal gg=G

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
set wmh=0

function! Writing()
    set nonumber
    set laststatus=0
    set wrap
    set linebreak
    set columns=80
    set scrolloff=2
    set foldmethod=manual
endfunction

autocmd FileType markdown call Writing()
