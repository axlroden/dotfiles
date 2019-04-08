#!/usr/local/bin/fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

curl https://raw.githubusercontent.com/docker/compose/1.21.2/contrib/completion/fish/docker-compose.fish > ~/.config/fish/completions/docker-compose.fish
curl https://raw.githubusercontent.com/docker/cli/master/contrib/completion/fish/docker.fish > ~/.config/fish/completions/docker.fish

fisher add docker-completion
fisher add pipenv
fisher add laughedelic/pisces
fisher add laughedelic/brew-completions
fisher add pyenv
fisher add tab
fisher add done
fisher add omf/osx
fisher add z
fisher add grc
fisher add homebrew-tap
fisher add grc
fisher add gitignore
fisher add ghost
fisher add edc/bass
fisher add omf/extract
fisher add omf/sublime
fisher add omf/ssh
fisher add omf/python
fisher add omf/git-flow
fisher add omf/django
fisher add omf/composer
fisher add omf/bundler
fisher add omf/brew
fisher add omf/theme-bobthefish