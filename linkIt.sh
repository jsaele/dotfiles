#!/bin/sh

# arg 1 is path to dotfiles repo
# remember to add links to all dotfiles

cd
ln -s $1/dotfiles/.gitconfig .gitconfig
ln -s $1/ohai-emacs/ .emacs.d
ln -s $1/dotfiles/.profile .profile
ln -s $1/dotfiles/.zprofile .zprofile
# maybe not the best solution
mkdir -p .config/fish && ln -s ../../$1/dotfiles/config.fish .config/fish/config.fish
mkdir -p .config/terminator && ln -s ../../$1/dotfiles/terminator-config .config/terminator/config
mkdir -p .config/i3 && ln -s ../../$1/dotfiles/i3-config .config/i3/config
mkdir -p .config/i3status && ln -s ../../$1/dotfiles/i3status-config .config/i3status/config
mkdir -p .fonts && ln -s ../$1/dotfiles/PowerlineSymbols.otf .fonts/PowerlineSymbols.otf
mkdir -p .ssh && ln -s ~/$1/dotfiles/.ssh-config .ssh/config