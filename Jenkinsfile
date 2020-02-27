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
				dir('~/rpmbuild/SOURCES') {
					sh('pwd')
					sh('wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz')
				}
				dir('~/rpmbuild/SPECS') {
					sh('rpmdev-newspec hello')
				}
			}
		}
	}
}
