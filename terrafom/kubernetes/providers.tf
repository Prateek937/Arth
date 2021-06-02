provider "kubernetes" {
    config_path = "~/.kube/config"
    # context name of local kubernetes cluster is 'minikube'.
    config_context = "minikube"
}