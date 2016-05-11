#!/bin/bash

set -e

install_jenkins() {
	
	sudo apt update
	wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
	sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
	sudo apt update
	sudo apt install -y jenkins
	sudo service jenkins start

}

if ! type jenkins &> /dev/null;then
	echo "Jenkins is not installed"
	echo "Installing jenkins..."
	
	install_jenkins
