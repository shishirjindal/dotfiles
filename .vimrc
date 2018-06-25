" Header Format
function! s:insert_copyright()
  execute "normal! i// Copyright 2018 Cohesity Inc."
  execute "normal! o//"
  execute "normal! o// Author: Shishir Jindal (sjindal@cohesity.com)"
  execute "normal! o"
  normal! kk
endfunc
autocmd BufNewFile *.{cc,proto,go,sh} call <SID>insert_copyright()

" Switch Between tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Pathogen to install plugins easily
execute pathogen#infect()
syntax on
filetype plugin indent on

" Generic settings
set number
set numberwidth=1
set t_Co=256
syntax on
set linebreak
set showmatch
set lazyredraw
set wrap
set hlsearch
set cursorline
set ignorecase
set mouse=a
set foldmethod=indent
set tabstop=2 shiftwidth=2 expandtab
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Clang-format file to auto indent code
map <C-K> :pyf /home/shishir/clang-format.py<cr>
imap <C-K> <c-o>:pyf /home/shishir/clang-format.py<cr>

" NerdTree Plugin
autocmd vimenter * NERDTree
