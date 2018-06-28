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

" Toggle folds
nnoremap <space> :za<CR>

" Pathogen to install plugins easily
execute pathogen#infect()
syntax on
filetype plugin indent on

" Color scheme
colorscheme atom-dark-256

" Generic settings
set number
set numberwidth=1
set t_Co=256
set linebreak
set showmatch
set lazyredraw
set wrap
set hlsearch
set cursorline
set ignorecase
set mouse=a
set foldenable
set foldmethod=indent
set foldlevel=50
set foldnestmax=10
set tabstop=2 shiftwidth=2 expandtab

" Highlight extra white spaces at the end
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Clang-format file to auto indent code
map <C-K> :pyf /home/shishir/clang-format.py<CR>
imap <C-K> <c-o>:pyf /home/shishir/clang-format.py<CR>

" NerdTree Plugin
autocmd vimenter * NERDTree

" CtrlP Plugin
set runtimepath^=~/.vim/bundle/ctrlp

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': [],
    \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
    \ }
