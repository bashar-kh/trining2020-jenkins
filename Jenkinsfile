#!/bin/groovy
pipeline {
	agent {
		dockerfile true
	}
	stages {
		stage('Init') {
			steps {
				sh('echo $HOME')
			        sh('rpmdev-setuptree')
				sh('ls ~/rpmbuild/SOURCES')
				sh('cd ~/rpmbuild/SOURCES && pwd && wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz')
				sh('~/rpmbuild/SPECS && rpmdev-newspec hello')
			}
		}
	}
}
