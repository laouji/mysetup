syntax on
set background=dark
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=blue guibg=blue

source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set termguicolors
colorscheme candycode
:match ExtraWhitespace /\s\+$/

filetype plugin on
let g:go_disable_autoinstall = 0

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
set pastetoggle=<F5>
set vb t_vb=

set tabstop=2
set expandtab
set shiftwidth=2
set shiftround

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8\,gk2312\,gbk\,gb18030,ucs-bom\,prc\,euc-kr\,cp949
set termencoding=utf-8
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

"vim-go omni completion while in insert mode
inoremap <C-b>  <C-x><C-o>

" perl mapping
map <F1> O#!/usr/bin/env perl<CR><ESC>iuse strict;<CR><ESC>iuse warnings;<CR>
vmap ,; :s/^/#/<CR>:noh<CR>
vmap ,cl :s/^#//<CR>:noh<CR>
imap ,dumper  use Data::Dumper; warn Dumper(  );<ESC>F;a<Return><ESC>f(la

" lua mapping
vmap ,- s:/^/--/<CR>:noh<CR>
vmap ,c- s:/^--//<CR>:noh<CR>

" html mapping
imap ,div <div></div><ESC>2ba
imap ,ahre <a href=""></a><ESC>F"i

" xslate mapping
imap ,loc [% loc('') %]<ESC>F'i 

map <F3> :!/Applications/CoronaSDK/Corona\ Terminal -project %:p -skin iPhone<CR>

"Session support. Save Session As and Session Open.
nmap SSA :wa<CR>:mksession! ~/.vimSessions/
nmap SO :wa<CR>:so ~/.vimSessions

"Usage: :let g:S=0
" :%s/\d\+/\=Sum(submatch(0))/g
" :echo g:S

let g:S = 0 "result in global variable S
function! Sum(number)
  let g:S = g:S + a:number
  return a:number
endfunction

if has("persistent_undo")
  set backup backupdir=~/.vimtemp/backup//
endif
