# # # # # # # # # # # # # # # # # # # # # # # # #
# Environment variables
# # # # # # # # # # # # # # # # # # # # # # # # #
set PATH $PATH ~/code/bin ~/code/bin/homebin ~/code/bin/OJDBC-Full
set EDITOR nvim
set JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -x -U GOPATH "/Users/sam99676/code/"

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
# source ~/dotfiles/scripts/my_functions.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sam99676/Downloads/google-cloud-sdk 2/path.fish.inc' ]; . '/Users/sam99676/Downloads/google-cloud-sdk 2/path.fish.inc'; end
