#!/usr/local/bin/fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install brgmnn/fish-docker-compose
fisher install sentriz/fish-pipenv
fisher install laughedelic/brew-completions
fisher install edc/bass
fisher install jorgebucaran/hydro

# Oh my fish
curl -L https://get.oh-my.fish | fish
omf install osx
omf install extract
omf install python	
omf install git-flow	
omf install composer	
omf install bundler	
omf install brew	
omf install asdf
omf install pyenv
