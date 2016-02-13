#!/bin/sh 

mkdir -p ~/.vim/autoload ~/.vim/bundle/vim-pathogen/autoload && \
curl -LSso ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

mkdir ~/.vim/colors
curl -o ~/.vim/colors/peaksea.vim https://raw.githubusercontent.com/vim-scripts/peaksea/master/colors/peaksea.vim
curl -o ~/.vim/colors/candycode.vim https://vimcolorschemetest.googlecode.com/svn/colors/candycode.vim
