#!/bin/sh

#elm-format, check version berfore installing
wget https://github.com/avh4/elm-format/releases/download/0.6.0-alpha/elm-format-0.18-0.6.0-alpha-linux-x64.tgz -O temp.tgz; tar -xvzf temp.tgz; rm temp.tgz; mkdir ~/bin; mv elm-format ~/bin
