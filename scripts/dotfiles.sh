#!/bin/bash
echo ".cfg" >> .gitignore
git clone --bare https://github.com/jaredzieche/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
config submodule update --init --recursive