set nocompatible

filetype plugin on
filetype plugin indent on
filetype on

"autochdir change to directory of file in buffer
"set noacd acd
"
"tags list of file names to search for tags
"(global or local to buffer)
"set tag=./tags,./TAGS,tags,TAGS
set tag=tags;,TAGS;

set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab

set backspace=indent,eol,start " Better handling of backspace key
set wildmenu
set wildmode=longest:full,full " Expand match on first Tab complete

colorscheme desertEx
"set t_Co=256

set nowrap
set linebreak " if wrap is on no wordbreaks
set ruler
set showcmd
set showmode
set cursorline
set laststatus=2

set statusline=%f             " path to file
set statusline+=\ -\          " separator
set statusline+=%n            " buffer number
set statusline+=\ -\          " separator
set statusline+=FileType:\ %y " filetype
set statusline+=\ -\          " separator
set statusline+=%m            " modifiable
set statusline+=%=            " moving to the right side
set statusline+=c:\         " column header
set statusline+=%c            " column number
set statusline+=\ -\          " separator
set statusline+=l:\       " lines header
set statusline+=%l/%L         " line / total lines

set number
syntax enable

set autoindent
set smartindent

set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

set foldenable
set foldcolumn=3
set foldmethod=syntax
set foldlevelstart=20

set nolist

source ~/.vim/script.vim

nnoremap <F12> :sh<CR>
nnoremap <F9> :make<CR>
nnoremap <F7> :cn<CR>
nnoremap <F6> :cp<CR>

nnoremap <F5> :call SetMp()<CR>
nnoremap <F3> :call SwitchHeaders()<CR>

call pathogen#infect()


set encoding=utf-8
set fileencodings=utf-8,cp1251


au FileType make setlocal noexpandtab " не заменять табы пробелами в Makefile'ах

"making chmod+x automatically
function! ModeChange()
    if getline(1) =~ "^#!"
        silent !chmod a+x <afile>
    endif
endfunction
au BufWritePost * call ModeChange()

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let mapleader = "\\"

" <C-d> in insert mode deletes a line
"inoremap <c-d> <esc>ddi
" <C-d> in insert mode uppercases a word
inoremap <C-u> <esc>vawU<esc>i

nnoremap <leader>h :nohlsearch<cr>

" replacing line under cursor with yanked one
nnoremap <leader>p Vp

" opening vimrc (ev - edit vimrc)
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" reloading vimrc (sv - source vimrc)
nnoremap <leader>sv :source $MYVIMRC<cr>

"nnoremap <C-t> :NERDTreeToggle<CR>

