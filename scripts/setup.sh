#!/bin/bash

# Need to add mkdirs if dirs don't exist

ln -s -f ~/git/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/git/dotfiles/tmux/.tmux.conf.local ~/.tmux.conf.local
mkdir -p ~/.config/ && ln -s -f ~/git/dotfiles/nvim ~/.config/nvim
mkdir -p ~/.config/ && ln -s -f ~/git/dotfiles/alacritty ~/.config/alacritty
ln -s -f ~/git/dotfiles/idea/.ideavimrc ~/.ideavimrc
mkdir -p ~/.config/fish/ && ln -s -f ~/git/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s -f ~/git/dotfiles/git/.gitconfig ~/.gitconfig
ln -s -f ~/git/dotfiles/bash/bashrc ~/.bashrc
