helm "consul" {
  cluster = "cluster.k3s"
  chart = "./helm/consul-helm-0.9.0"
  values = "./helm/consul-values.yaml"
  
  health_check {
    timeout = "60s"
    pods = ["release=consul"]
  }
}

helm "vault" {
  cluster = "cluster.k3s"
  chart = "./helm/vault-helm-0.3.0"
  values = "./helm/vault-values.yaml"

  health_check {
    timeout = "60s"
    pods = ["app.kubernetes.io/name=vault"]
  }
}