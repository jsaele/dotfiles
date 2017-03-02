#!/bin/sh

# arg 1 is path to dotfiles repo
# remember to add links to all dotfiles

cd
ln -s $1/dotfiles/.gitconfig .gitconfig
