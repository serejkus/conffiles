set nocompatible

syntax on

set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set encoding=utf-8
set fileencodings=utf-8,cp1251

set number
set showcmd   " command line status
set ruler
set nowrap
set linebreak

set showmatch " matching brackets

set cindent
set ai
set si

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

