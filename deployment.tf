resource "kubernetes_deployment" "ft-deploy" {
  metadata {
    name = "ft-deploy"
    labels = {
      name = "ft-deploy"
    }

  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        name = "ft-deploy"
      }
    }


    template {
      metadata {
        labels = {
          name = "ft-deploy"
        }
      }

      spec {
        container {
          image = "nginx"
          name  = "webapp-1"
          port {
            container_port = 8080
          }


        }
      }
    }
  }
}