# # # # # # # # # # # # # # # # # # # # # # # # #
# Environment variables
# # # # # # # # # # # # # # # # # # # # # # # # #
set PATH $PATH ~/code/bin ~/code/bin/homebin ~/code/bin/OJDBC-Full /Library/Frameworks/Python.framework/Versions/3.9/bin/ ~/Library/Python/3.8/bin/ /usr/local/go/bin/
set -gx PATH $PATH $HOME/.krew/bin
set EDITOR nvim
set JAVA_HOME (/usr/libexec/java_home)
set -x -U GOPATH "/Users/$USER/git/"

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
source ~/git/dotfiles/scripts/alias.sh

alias fzfcmd="fzf --ansi -i -1 --height=50% --reverse -0 --inline-info --border"
# Directory aliases
alias dotfiles="cd ~/git/dotfiles"
alias wg="cd ~/git"
alias go-furl="cd ~/go/src/github.com/danmikita/furl"
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

#scrolling:
#  faux_multiplier: 0
set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths
