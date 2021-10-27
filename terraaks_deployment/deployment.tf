resource "kubernetes_deployment" "datemsg" {
  metadata {
    name = "datemsg"
    labels = {
      App = "datemsg"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "datemsg"
      }
    }
    template {
      metadata {
        labels = {
          App = "datemsg"
        }
      }
      spec {
        container {
          image = "ankit199112/tfaksnoderest:latest"
          name  = "datemsg"

          port {
            container_port = 80
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}



