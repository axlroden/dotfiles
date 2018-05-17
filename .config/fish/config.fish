# Personal aliases
function up
  ping 8.8.8.8
end

function battery
  pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f1 -d';'
  pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f3 -d';'
end

function cpu
  sysctl -n machdep.cpu.brand_string
end

function ip
  dig +short myip.opendns.com @resolver1.opendns.com
end

function ss
  open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app
end

function lock
  /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
end

function icloud
  command brctl monitor ~/iCloud/
end

function icloud-logs
  command brctl log --wait
end

function uptime
  command grc uptime
end

function fortune
  command fortune $argv | lolcat
end

function mate
  command subl -multiinstance $argv
end

function df --description 'Displays disk free space'
  command df -H $argv
end

function vlc
  open -a vlc $argv
end

function gitx
  command gittower (git rev-parse --show-toplevel)
end

function fresh
  command git commit -m "empty commit" --allow-empty
end

function hfresh
  command fresh and command git push heroku master
end

function cake
  command em sparkles cake sparkles
end

function super-cake
  command em dizzy sparkles cake sparkles dizzy
end

function svn
  command find . -name "*.svn" -exec rm -rf {} \;
end

function pyc
  command find . -name "*.pyc" -exec rm -rf {} \;
end

set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_git_untracked no
set -g theme_color_scheme solarized-dark

if status --is-login

    # better ls colors
    set -gx LSCOLORS gxfxcxdxbxegedabagacad

    set -gx PATH /usr/local/bin $PATH
    set -gx GOPATH ~/go/

    # Autojump support
    [ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

    # Don't write bytecode, Python!
    export PYTHONDONTWRITEBYTECODE=1
    export PIPENV_DEFAULT_PYTHON_VERSION=3.6
    export PIPENV_SHELL_FANCY=1
    export PIPENV_MAX_SUBPROCESS=32
    export EDITOR=subl
    set SHELL /usr/local/bin/fish

    set -gx PATH /Users/kennethreitz/.local/bin $PATH
    set -gx PATH /usr/local/opt/python@2/bin $PATH
    set -gx ANDROID_NDK_HOME /usr/local/share/android-ndk
    set -gx ANDROID_SDK_ROOT /usr/local/share/android-sdk

    # Go support.
    set -gx PATH /Users/kennethreitz/go/bin $PATH

    # set -x PYENV_ROOT $HOME/.pyenv
    # set -x PATH $PYENV_ROOT/bin $PATH
end

export GPG_TTY=(tty)
