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

# imove

function irun
   cd ~/dev/imove/; and dev run $argv
end

function dcd
  dev cd $argv
end

function k
  kubectl $argv
end

function ...
    cd ../..
end

function ..
    cd ..
end

function g
    git $argv
end

function p
    pip3 $argv
end

function la
    ls -la $argv
end

function devv
    cd ~/dev
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

function imove
    cd ~/dev/imove
end

function packages
    cd ~/dev/imove/packages
end

function fako
    cd ~/dev/fako
end

function runfako
    cd ~/dev/fako/fako-web; and npm run dev
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

function extractTranslations
    cd ~/dev/Advanzia/tools/SanityTranslationsExtractor/SanityTranslationsExtractor/bin/Debug/net8.0/; and ./SanityTranslationsExtractor "/Users/joakims/dev/Advanzia/business-applications/src/CustomerWeb/Assets/public/locales"
end

function extractTranslations2
    bash ~/dev/Advanzia/tools/SanityTranslationsExtractor/SanityTranslationsExtractor/bin/Debug/net8.0/SanityTranslationsExtractor
end

# - Aliases end

#starship init fish | source
