set nocompatible

syntax enable

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab

set encoding=utf-8
set fileencodings=utf-8,cp1251

set backspace=indent,eol,start

set number
set showcmd   " command line status
set ruler
set cursorline
set nowrap
set linebreak
set showmode
set laststatus=2

set wildmenu
set wildmode=longest:full,full

set showmatch " matching brackets
" matchpairs determines characters that form pairs

set cindent
set autoindent
set smartindent

set hlsearch
set incsearch
set ignorecase
set smartcase

colorscheme desert

set foldenable
set foldcolumn=3
set foldmethod=syntax
set foldlevelstart=20

nnoremap <C-m> :make
nnoremap <C-v> :cn<CR>

filetype plugin on
filetype on

au FileType make setlocal noexpandtab " not replacing tabs with spaces in Makefiles

" highliting trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

