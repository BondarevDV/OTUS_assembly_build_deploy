def DOCKER_IMAGE_BRANCH = "latest"
def GIT_COMMIT_HASH = ""

pipeline {
    agent any
    stages{
        stage("Prepare build image") {
            steps {
                sh "docker build -f Dockerfile . -t project-build:${DOCKER_IMAGE_BRANCH}"
            }
        }
        stage("Build project") {
            agent {
                docker {
                    image "project-build:${DOCKER_IMAGE_BRANCH}"
                    args "-v ${PWD}/build:/app/build -w /app/build"
                    reuseNode true
                    label "build-image"
                }
            }
            steps {
                sh "pwd"
            }
        }
        // stage("Deploy-pack") {
        //     steps {
        //         sh "ls -la"
        //         sh "${PWD}/test_version"
        //         sh "${PWD}/helloworld"
        //     }
        // }
    }
    // post {
    //     always {
    //         step([$class: "WsCleanup"])
    //         cleanWs()
    //     }
    // }
}
