#!/bin/sh


# NodeJS

if [ ! node ]
then
    sudo apt install nodejs
    sudo apt install npm
fi


# TypeScript

if [ ! tsc ]
then
    sudo npm install -g typescript
fi

# Elm

if [ ! elm ]
then
    #elm
    sudo npm install -g elm

    #elm-format -- improve with version latest
    wget https://github.com/avh4/elm-format/releases/download/0.6.0-alpha/elm-format-0.18-0.6.0-alpha-linux-x64.tgz -O temp.tgz;
    tar -xvzf temp.tgz;
    rm temp.tgz;
    mkdir ~/bin;
    mv elm-format ~/bin
fi

# add all the stuff you need here.



# Elixir

if [ ! elixir ]
then
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb; # TODO: What about versions?
    sudo apt-get update;
    sudo apt-get install esl-erlang;
    sudo apt-get install elixir;
fi
