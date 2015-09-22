#!/bin/sh 

mkdir -p ~/.vim/autoload ~/.vim/bundle/vim-pathogen/autoload && \
curl -LSso ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
