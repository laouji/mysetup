syntax on
colorscheme torte

hi Comment ctermfg=5 cterm=NONE
set backspace=indent,eol,start
set hidden
set hlsearch
set ignorecase
set incsearch
set ruler
set showcmd
set showmatch
set smartcase
set wrapscan
set autoindent
set pastetoggle=<F4>
set vb t_vb=

set tabstop=4
set expandtab
set shiftwidth=4
set shiftround

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8\,gk2312\,gbk\,gb18030,ucs-bom\,prc
set termencoding=utf-8set
set guifont=Monaco\ h11
set guifontwide=NSimsun\ h12

set wildmenu
set wildmode=full
set history=200

set laststatus=2
set statusline=%<%f\ %m%r%h%w[%{(&fenc!=''?&fenc:&enc).','.&ff}%Y]%=*%n\ %l,%c\ %P

" wrap text but prevent vim from inserting linebreaks 
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" perlhack5
set iskeyword+=:

"buffer mapping
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"vimrc Insert mode でCtrl + hjkl 移動
inoremap <C-L>  <C-O>l
inoremap <C-H>  <C-O>h
inoremap <C-J>  <C-O>j
inoremap <C-K>  <C-O>k
inoremap <C-Y>  <C-O>y
inoremap <C-U>  <C-O>u

" perl mapping
map <F1> O#!/usr/local/bin/perl<CR><ESC>iuse strict;<CR><ESC>iuse warnings;<CR>
vmap ,; :s/^/#/<CR>:noh<CR>
vmap ,cl :s/^#//<CR>:noh<CR>
imap ,dumper  use Data::Dumper; warn Dumper(  );<ESC>F;a<Return><ESC>f(la
:imap dumpa <ESC>^iwarn Data::Dumper->Dump([\<ESC>llyw$a], ['<ESC>pa']);<ESC>

" html mapping
imap ,div <div></div><ESC>2ba
imap ,ahre <a href=""></a><ESC>F"i

" xslate mapping
imap ,loc [% loc('') %]<ESC>F'i 
