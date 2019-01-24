# # # # # # # # # # # # # # # # # # # # # # # # #
# Environment variables
# # # # # # # # # # # # # # # # # # # # # # # # #
set PATH $PATH ~/git/homebin
set EDITOR nvim
set JAVA_HOME (/usr/libexec/java_home -v 1.8.0_202)
set GOPATH ~/go

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
alias refresh="source ~/dotfiles/fish/config.fish"
alias ong="oc login https://openshift.ong.spectrum-health.org -u=dan90374"
alias onb="oc login https://openshift.onb.spectrum-health.org -u=dan90374"
alias ms="oc login (minishift ip):8443 -u=admin -p=admin"
alias fishconfig="nvim ~/dotfiles/fish/config.fish"
alias vimconfig="nvim ~/dotfiles/nvim/init.vim"
alias diff="git difftool"

# Maven aliases
alias mvnci="mvn clean install"
alias mvncist="mvn clean install -DskipTests"

# Directory aliases
alias dotfiles="~/dotfiles"
alias wg="cd ~/git"
alias skynet="cd ~/git/skynet"
alias todos="cd ~/git/todos"
alias go-furl="cd ~/go/src/github.com/danmikita/furl"
