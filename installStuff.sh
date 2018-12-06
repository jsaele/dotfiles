s#!/bin/sh

# Emacs

#if [ !emacs25 ]
#then    
#    sudo add-apt-repository ppa:kelleyk/emacs
#    sudo apt-get update
#    sudo apt-get install emacs25 -y
#fi


# Ag - the silver searcher
if [ !ag ]
then
    sudo apt-get install silversearcher-ag
fi

# i3

if [ !i3 ]
then
    sudo apt install i3 -y
fi

if [ !xbacklight ]
then
    sudo apt install xbacklight -y
fi

# playerctl for spotify and other stuff volume controls. command not working properly
if [ !playerctl ]
then
    wget https://github.com/acrisci/playerctl/releases/download/v0.6.1/playerctl-0.6.1_amd64.deb | sudo dpkg -i playerctl-0.6.1_amd64.deb
fi

# Terminator

if [ !terminator ]
then
    sudo apt-get update 
    sudo apt-get install terminator -y
fi


# Fish 
if [ !fish ]
then
    sudo apt-get update
    sudo apt-get install fish
fi

# Curl

if [ !curl ]
then
    sudo apt install curl
fi    

# NodeJS & npm

if [ !node ]
then
    sudo apt install nodejs
    sudo apt install npm
fi


# TypeScript

#if [ ! tsc ]
#then
#    sudo npm install -g typescript
#fi

# Elm

if [ !elm ]
then
    #elm
    sudo npm install -g elm -y

#    #elm-format -- improve with version latest
#    wget https://github.com/avh4/elm-format/releases/download/0.6.0-alpha/elm-format-0.18-0.6.0-alpha-linux-x64.tgz -O temp.tgz;
#    tar -xvzf temp.tgz;
#    rm temp.tgz;
#    mkdir ~/bin;
#    mv elm-format ~/bin
fi

if [ !dotnet ]
then
    wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
    sudo dpkg -i packages-microsoft-prod.deb
    sudo apt-get install apt-transport-https
    sudo apt-get update
    sudo apt-get install dotnet-sdk-2.2
fi

if [ !fsharpi ]
then
    sudo apt-get update
    sudo apt-get install fsharp
fi
# add all the stuff you need here.



# Elixir

#if [ !elixir ]
#then
#    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb; # TODO: What about versions?
#    sudo apt-get update;
#    sudo apt-get install esl-erlang -y;
#    sudo apt-get install elixir -y;
#fi
