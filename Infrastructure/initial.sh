#!/bin/bash -e

working_dir=$(dirname $(realpath $0))

main() {
    checkCluster
    checkTools
    runComposes
}

checkCluster() {
    if minikube status; then
        echo "OK"
    else
        minikube start
    fi
}

checkTools() {
    helm version
    kubectl version
    docker info
}

runComposes() {
    bash -e $working_dir/jenkins/run.sh
    bash -e $working_dir/gitea/run.sh
    bash -e $working_dir/chartmuseum/run.sh
}

main
