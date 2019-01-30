#!/bin/bash/

#For creating basic soa3 sprint-boot archetype
mvnarch() {
    mvn archetype:generate -DarchetypeGroupId=org.spectrumhealth.ws.archetype -DarchetypeArtifactId=soa3-springboot -DarchetypeVersion=3.0.1 -Dversion=1.0.1-SNAPSHOT -DartifactId=$1 -B

}

# For cloning spectrum health repos from bitbucket
shclone() {
	git clone ssh://git@bitbucket.spectrum-health.org:7999/ews/$1.git
}

# Lints passed in yaml file. Full file path needed. ylint ./filename.yaml for yaml in current directory. Stops after the first yaml object for files that contain multiple objects separated by a '---' line.
ylint() {
    ruby -e "require 'yaml';puts YAML.load_file('$1')"
}

m2flip() {
    if [[ -f ~/.m2/settings.xml ]]; then
        mv ~/.m2/settings.xml ~/.m2/settings.cur
    else
        mv ~/.m2/settings.cur ~/.m2/settings.xml
    fi
}

al() {
    if [ $# eq 0 ]
	    echo 'zero'
    fi

    if [ $# eq 1 ]
	    echo 'one'

    fi

    if [ $# eq 2 ]
	    echo 'two'

    fi
}
