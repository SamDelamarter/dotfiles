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

alias refresh="source ~/dotfiles/fish/config.fish"
# alias osb="oc login https://openshift.osb.spectrum-health.org -u=$USER"
# alias onb="oc login https://openshift.onb.spectrum-health.org -u=$USER"
# alias os="oc login https://openshift-nonprod.spectrum-health.org -u=$USER"
# alias osp="oc login https://openshift.spectrum-health.org -u=$USER"
alias ms="oc login (minishift ip):8443 -u=admin -p=admin"
alias fishconfig="nvim ~/dotfiles/fish/config.fish"
alias vimconfig="nvim ~/dotfiles/nvim/init.vim"
# alias diff="git difftool"
alias vim="nvim"
alias yv="nvim - -c'set ft=yaml'"
alias yb="bat -lyaml"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sam99676/Downloads/google-cloud-sdk 2/path.fish.inc' ]; . '/Users/sam99676/Downloads/google-cloud-sdk 2/path.fish.inc'; end

alias fzfcmd="fzf --ansi -i -1 --height=50% --reverse -0 --inline-info --border"
# Directory aliases
alias dotfiles="~/dotfiles"
alias wg="cd ~/git"
alias skynet="cd ~/git/skynet"
alias todos="cd ~/git/todos"
alias go-furl="cd ~/go/src/github.com/danmikita/furl"
alias jenk="ssh -t dmikita@rhokvtstdmsk01 'sudo su -'"
alias os="~/git/openstack-ci/bin/startOpenStackTools.sh"
alias lcp="sh ~/git/openstack-ci/bin/localKubeConfig.sh"
alias fix="open smb://ddmi.intra.renhsc.com/DeptData"

function fco -d "Fuzzy-find and checkout a branch"
  git branch --all | grep -v HEAD | string trim | fzfcmd | read -l result; and git checkout "$result"
end

function fcoc -d "Fuzzy-find and checkout a commit"
  git log --pretty=oneline --abbrev-commit --reverse | fzfcmd --tac +s -e | awk '{print $1;}' | read -l result; and git checkout "$result"
end

function fssh -d "Fuzzy-find ssh host via ag and ssh into it"
  ag --ignore-case '^host [^*]' ~/.ssh/config | cut -d ' ' -f 2 | fzfcmd | read -l result; and ssh "$result"
end

function fh -d "Fuzzy-find ssh host via ag and ssh into it"
  history | fzfcmd | read -l result
  commandline -r $result
end
