# # # # # # # # # # # # # # # # # # # # # # # # #
# Environment variables
# # # # # # # # # # # # # # # # # # # # # # # # #
set PATH $PATH ~/code/bin ~/code/bin/homebin
set EDITOR nvim
set JAVA_HOME (/usr/libexec/java_home -v 1.8.0_202)
set GOPATH ~/code/

# # # # # # # # # # # # # # # # # # # # # # # # #
# BobTheFish Configs
# # # # # # # # # # # # # # # # # # # # # # # # #
set -g theme_nerd_fonts yes
set -g theme_color_scheme solarized-dark
set -g theme_display_vi yes

# # # # # # # # # # # # # # # # # # # # # # # # #
# Standard settings
# # # # # # # # # # # # # # # # # # # # # # # # #
fish_vi_key_bindings

# # # # # # # # # # # # # # # # # # # # # # # # #
# Aliases
# # # # # # # # # # # # # # # # # # # # # # # # #
source ~/dotfiles/scripts/alias.sh

# # # # # # # # # # # # # # # # # # # # # # # # #
# External Sources
# # # # # # # # # # # # # # # # # # # # # # # # #
# source ~/code/src/github.com/troyxmccall/wd/wd
