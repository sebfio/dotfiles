set nocompatible
set number
syntax on
set textwidth=80
set smarttab
colorscheme desert
imap jj <Esc>

set formatoptions+=w
set tw=80
set colorcolumn=80

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" press these sequence of commands to move a single line up or down
noremap <c-s-up> ddkP
noremap <c-s-down> ddp

set showcmd

command! MakeTags !ctags -R .

" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4 " tab width is 4 spaces
set shiftwidth=4 " indent also with 4 spaces
set expandtab " expand tabs to spaces
" turn syntax highlighting on
set t_Co=256
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/,mb:\ ,elx:\ */

" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

let g:DoxygenToolkit_authorName="Sebastian Fiorini sebf465@gmail.com"

" Enhanced keyboard mappings
" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean all<CR>
" goto definition with F12
map <F12> <C-]>
" in diff mode we use the spell check keys for merging
if &diff
map <M-Down> ]c
map <M-Up> [c
map <M-Left> do
map <M-Right> dp
map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
" spell settings
map <M-Down> ]s
map <M-Up> [s
endif

