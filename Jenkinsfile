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
				sh('cd ~/rpmbuild/SPECS && rpmdev-newspec hello')
			}
		}
		stage('build'){
			steps{
				sh('cp hello.spec ~/rpmbuild/SPECS/hello.spec')
				sh('cd ~/rpmbuild/SPECS ; rpmbuild -ba hello.spec')
				sh('cp /home/user/rpmbuild/RPMS/*/*.rpm .')
			}
		}
		stage('Deploy'){
			steps{
				archiveArtifacts(artifacts: '*.rpm')
			}
		}
		
	}
}
