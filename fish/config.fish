set PATH $PATH ~/code/bin ~/code/bin/homebin

set GOPATH ~/code/

# BobTheFish Configs
set -g theme_nerd_fonts yes
#set -g theme_display_k8s_context yes
#set -g theme_display_docker_machine yes
set -g theme_color_scheme solarized-dark
set -g theme_display_vi yes
#set -g theme_newline_cursor yes

# Standard settings
fish_vi_key_bindings

# Aliases
alias ong="oc login https://openshift.ong.spectrum-health.org -u=sam99676"
alias ms="oc login (minishift ip):8443 -u=admin -p=admin"
alias amq-run="docker run -d --name local_amq  -p 61616:61616 -p 8161:8161 rmohr/activemq"
alias amq-start="docker start local_amq"
alias amq-stop="docker stop local_amq"
alias amq-rm="docker rm local_amq"
# you can hit the console on http://localhost:8161/admin
# admin/admin to login

# External Sources
# source ~/code/src/github.com/troyxmccall/wd/wd
