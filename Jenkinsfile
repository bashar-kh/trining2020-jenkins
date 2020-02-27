#!/bin/groovy
pipeline {
	agent {
		dockerfile true
	}
	stages {
		stage('Init') {
			step {
				sh('echo $HOME')
			}
		}
	}
}
