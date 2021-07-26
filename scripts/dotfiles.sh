#!/bin/bash
echo ".cfg" >> $HOME/.gitignore
git clone --bare https://${dotfiles_repo} $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
config submodule update --init --recursive
