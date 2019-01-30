#!/bin/bash

# Configs
alias nvimconfig 'nvim ~/dotfiles/nvim/init.vim'
alias dotfiles 'nvim ~/dotfiles'
alias fishrl 'source ~/.config/fish/config.fish'

alias f 'furl'

# AMQ
alias amq-rm 'docker rm local_amq'
alias amq-run 'docker run -d --name local_amq  -p 61616:61616 -p 8161:8161 rmohr/activemq'
alias amq-start 'docker start local_amq'
alias amq-stop 'docker stop local_amq'
# you can hit the console on http://localhost:8161/admin
# admin/admin to login

# Kubernetes
alias ms 'minishift'
alias ms-login 'oc login (minishift ip):8443 -u=admin -p=admin'
alias ong-login 'oc login https://openshift.ong.spectrum-health.org -u=sam99676'

# mvn
alias mvnci 'mvn clean install'
alias mvncist 'mvn clean install -DskipTests'
alias mvnr 'mvn clean install -DskipTests -Prun'
alias mvnd 'mvn clean install -DskipTests -Pdebug'
alias mvng 'mvn generate-sources'

# git
alias m 'git checkout master'
alias d 'git checkout develop'
alias p 'git pull'
alias gf 'git fetch --prune'
alias gst 'git status'
alias ga 'git add'
alias gc 'git commit -v'
alias gd 'git diff'
alias gco 'git checkout'
alias gbl 'git blame -b -w'
alias gr 'git rebase -i'
alias gp 'git push'

# Applications
alias intellij 'open -a /Applications/IntelliJ\ IDEA\ CE.app'

# warp directories
alias wg 'cd ~/code/src/bitbucket.spectrum-health.org'
alias message 'cd ~/code/src/bitbucket.spectrum-health.org/message'
alias message-batch 'cd ~/code/src/bitbucket.spectrum-health.org/message-batch'
alias onb-login 'oc login https://openshift.onb.spectrum-health.org:443 -u=sam99676'
alias message-2 'cd /Users/sam99676/code/src/bitbucket.spectrum-health.org/message-2'