#!/bin/sh 

cd mysetup/dotfiles
for dotfile in .?*; do
    ln -Fis "$PWD/$dotfile" $HOME
done
