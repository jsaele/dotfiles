#!/bin/sh

if ! command -v brew &> /dev/null
then
    echo "------ Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command -v fish &> /dev/null
then
    echo "------ Installing fish"
    brew install fish
fi

if ! command -v starship &> /dev/null
then
    echo "------ Installing starship"
    brew install starship
fi

echo "Installed all missing deps"
