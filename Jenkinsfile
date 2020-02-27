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
			}
		}
	}
}
