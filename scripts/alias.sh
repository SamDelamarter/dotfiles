#!/bin/bash

# Configs
alias nvimconfig='nvim ~/dotfiles/nvim/init.vim'
alias dotfiles='nvim ~/dotfiles'
alias fishrl='source ~/.config/fish/config.fish'

alias f='~/code/bin/homebin/furl'

# AMQ
alias amq-rm='docker rm local_amq'
alias amq-run='docker run -d --name local_amq  -p 61616:61616 -p 8161:8161 rmohr/activemq'
alias amq-start='docker start local_amq'
alias amq-stop='docker stop local_amq'
alias amq-open='open http://localhost:8161/admin'
# you can hit the console on http://localhost:8161/admin
# admin/admin to login

# oracle
alias oracle-run="docker run -d --name oracle_db  -p 49160:22 -p 49161:1521 deepdiver/docker-oracle-xe-11g"
alias oracle-start="docker start oracle_db"
alias oracle-stop="docker stop oracle_db"
alias oracle-rm="docker rm oracle_db"

# postgress
alias postgres-run="docker run -d --name postgres_db -p 5432:5432 postgres:11.1"
alias postgres-start="docker start postgres_db"
alias postgres-stop="docker stop postgres_db"
alias postgres-rm="docker rm postgres_db"

# Kubernetes
alias kd='kubectl describe'

# Source: https://medium.com/@ContinoHQ/the-ultimate-guide-to-passing-the-cka-exam-1ee8c0fd44cd
alias kc='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kgc='kubectl get componentstatuses'
alias kctx='kubectl config current-context'
alias kcon='kubectl config use-context'
alias kgctx='kubectl config get-contexts'

# Openshift
alias ms='minishift'
alias ms-login='oc login (minishift ip):8443 -u=admin -p=admin'
alias ocp-login='oc login https://openshift.spectrum-health.org -u=$USER'
alias ocnp-login='oc login https://openshift-nonprod.spectrum-health.org:443 -u=$USER'

# mvn
alias mvnci='mvn clean install'
alias mvncist='mvn clean install -DskipTests'
alias mvnr='mvn clean install -DskipTests -Prun'
alias mvnd='mvn clean install -DskipTests -Pdebug'
alias mvng='mvn generate-sources'

# git
alias m='git checkout master'
alias d='git checkout develop'
alias p='git pull'
alias gf='git fetch --prune'
alias gst='git status'
alias ga='git add'
alias gc='git commit -v'
alias gd='git diff'
alias gco='git checkout'
alias gbl='git blame -b -w'
alias gr='git rebase -i'
alias gp='git push'

# Applications
alias intellij='open -a /Users/sam99676/Library/Application Support/JetBrains/Toolbox/apps/IDEA-U/ch-0/191.7479.19/IntelliJ\ IDEA.app'

# warp directories
alias wg='cd ~/code/src/bitbucket.spectrum-health.org'
alias message='cd ~/code/src/bitbucket.spectrum-health.org/message'
alias message-batch='cd ~/code/src/bitbucket.spectrum-health.org/message-batch'
alias message-2='cd ~/code/src/bitbucket.spectrum-health.org/message-2'
alias soa-archs='cd ~/code/src/bitbucket.spectrum-health.org/soa-archetypes'
alias soa-common='cd ~/code/src/bitbucket.spectrum-health.org/soa-common'
alias c='clear'

alias encounter='cd /Users/sam99676/code/src/bitbucket.spectrum-health.org/encounter'
alias ocl-login='oc login (minishift ip):8443'
alias event-common='cd /Users/sam99676/code/src/bitbucket.spectrum-health.org/event-common'
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"