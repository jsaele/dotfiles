#function fish_prompt
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/fish/powerline-setup.fish
#end


# Aliases

function ...
    cd ../..
end

function ..
    cd ..
end

function g
    git $argv
end

function dev
    cd ~/dev
end

function joakim
    cd ~/dev/joakim
end

function rainfall
    cd ~/dev/rainfall
end

function spotify
    /usr/bin/spotify --force-device-scale-factor=2.0
end

# - Aliases end
