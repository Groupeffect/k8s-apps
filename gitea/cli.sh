#!/bin/sh
# dependencies:
# - Kubernetes
# - Helm
# - Makefile (optonal)

repoName=gitea-helm-chart
cmd_clone_gitea_helm_chart(){
    git clone https://gitea.com/gitea/helm-chart.git $repoName
}

cmd_helm_install_gitea(){
    # replace helm values
    cp values.yaml $repoName/values.yaml
    helm install gitea-one ./$repoName # default namespace
}
