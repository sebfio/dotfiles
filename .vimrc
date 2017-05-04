set nocompatible
syntax on
set number
set smarttab
set background=dark
"set termguicolors
colorscheme breezy
"colorscheme desert
imap jj <Esc>

nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==

set formatoptions+=w

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set whichwrap+=<,>,h,l,[,]

" press these sequence of commands to move a single line up or down
set showcmd

command! MakeTags !ctags -R .

" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4 " tab width is 4 spaces
set shiftwidth=4 " indent also with 4 spaces
" set expandtab " expand tabs to spaces
" turn syntax highlighting on
set t_Co=256
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/,mb:\ ,elx:\ */

set tags+=~/.vim/tags/cpp

