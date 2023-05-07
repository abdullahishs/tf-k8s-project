resource "kubernetes_service" "web-service" {
  metadata {
    name = "web-service"
  }
  spec {
    port {
      port        = 8080
      node_port = 30080
    }

    type = "NodePort"
  }
}