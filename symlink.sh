#!/bin/sh 

cd ./dotfiles
for dotfile in .?[a-z]*; do
    ln -Fis "$PWD/$dotfile" $HOME
done
