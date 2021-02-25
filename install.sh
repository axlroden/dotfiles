#!/usr/bin/env bash

# Install Xcode Command Line Tools.
xcode-select --install

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew basics (auto-updating).
brew install terminal-notifier
brew tap domt4/autoupdate
brew autoupdate --start --upgrade --cleanup --enable-notifications

# Install brew essentials.
brew install heroku
brew install git
brew install ack

# Install Heroku plugins.
heroku plugins:install heroku-repo

# Install download utilities.
brew install youtube-dl
brew install wget

# Install fancy shell stuff.
brew install fish
brew install grc
brew install direnv
brew install nnn
brew install thefuck
brew install autojump
brew install googler
brew install mas
brew install htop
brew install neofetch
brew install mosh
brew install docker-completion

# Install bash utilities.
brew install bats
brew install shellcheck

# Install Python utilities
brew install python

# Pipenv!
brew install pipenv

# Install git utilities.
brew install git-open
brew install gist
