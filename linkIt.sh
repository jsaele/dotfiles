#!/bin/sh

# arg 1 is path to dotfiles repo
# remember to add links to all dotfiles

cd
ln -s $1/dotfiles/.gitconfig .gitconfig
ln -s $1/dotfiles/.profile .profile
# maybe not the best solution
mkdir .config && mkdir .config/fish && ln -s ../../$1/dotfiles/config.fish .config/fish/config.fish
mkdir .config/terminator && ln -s ../../$1/dotfiles/terminator-config .config/terminator/config
mkdir .config/i3 && ln -s ../../$1/dotfiles/i3-config .config/i3/config
mkdir .fonts && ln -s ../$1/dotfiles/PowerlineSymbols.otf .fonts/PowerlineSymbols.otf
