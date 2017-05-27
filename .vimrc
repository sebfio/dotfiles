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

" Made by vimrc.io
set autoindent  " take indent for new line from previous line
set cindent  " do C program indenting
set copyindent  " make 'autoindent' use existing indent structure
set preserveindent  " preserve the indent structure when reindenting
set shiftwidth=4  " number of spaces to use for (auto)indent step
set smartindent  " smart autoindenting for C programs
set smarttab  " use 'shiftwidth' when inserting <Tab>
set tabstop=4  " number of spaces that <Tab> in file uses
set showcmd  " show (partial) command in status line
set number  " print the line number in front ddof each line
set autoread  " autom. read file when changed outside of Vim
set mouse=a  " enable the use of mouse clicks

set tags+=~/.vim/tags/cpp

