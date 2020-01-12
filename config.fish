set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end


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

function ybapp
    cd ~/dev/yachtbois/app; and npm start
end

function ybsrv
    cd ~/dev/yachtbois/server; and npm start
end

function spotify
    /snap/bin/spotify --force-device-scale-factor=1.0 # 2 for 2x
end

function scaleX2
    xrandr --output DP1 --scale 2x2
end

function leftOfeDP1
    xrandr --output DP1 --auto --left-of eDP1
end

function rightOfeDP1
    xrandr --output DP1 --auto --right-of eDP1
end

function setBrightness
    xrandr --output eDP1 --brightness $argv
end

# - Aliases end
