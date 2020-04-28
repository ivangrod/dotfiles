# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# JAVA_HOME
export JAVA8_HOME=/home/igutierrez/software/jdk1.8.0_211
export JAVA11_HOME=/home/igutierrez/software/jdk-11.0.3
export JAVA12_HOME=/home/igutierrez/software/jdk-12.0.1
export JAVA_HOME=/home/igutierrez/software/jdk1.8.0_211
export PATH=$JAVA_HOME/bin:$PATH

# M2 / M2_HOME
export M2_HOME=/home/igutierrez/software/apache-maven-3.5.3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# Openshift
export PATH=/home/igutierrez/software/openshift/minishift-1.22.0-linux-amd64:$PATH
export PATH=/home/igutierrez/.minishift/cache/oc/v3.9.0/linux:$PATH

# Kafka
export PATH=/home/igutierrez/software/kafka_demo/kafka_2.12-2.0.0/bin:$PATH

# Gradle
export PATH=/home/igutierrez/software/gradle-5.4.1/bin:$PATH
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
