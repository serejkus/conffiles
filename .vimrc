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

set statusline=%f             " path to file
set statusline+=\ -\          " separator
set statusline+=%n            " buffer number
set statusline+=\ -\          " separator
set statusline+=FileType:\ %y " filetype
set statusline+=\ -\          " separator
set statusline+=%m            " modifiable
set statusline+=%=            " moving to the right side
set statusline+=%l/%L         " line / total lines

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

filetype plugin on
filetype on

set tags=tags;,TAGS;
"set tag=./tags,./TAGS,tags,TAGS

au FileType make setlocal noexpandtab " not replacing tabs with spaces in Makefiles

" highliting trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let mapleader = "\\"

nnoremap <F12> :sh<CR>
nnoremap <F9> :make<CR>
nnoremap <F7> :cn<CR>
nnoremap <F6> :cp<CR>

" <C-d> in insert mode deletes a line
inoremap <C-d> <esc>ddi
" <C-d> in insert mode uppercases a word
inoremap <C-u> <esc>vawU<esc>i

" replacing line under cursor with yanked one
nnoremap <leader>p Vp

" opening vimrc (ev - edit vimrc)
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" reloading vimrc (sv - source vimrc)
nnoremap <leader>sv :source $MYVIMRC<cr>

