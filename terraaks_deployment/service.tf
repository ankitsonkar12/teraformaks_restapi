resource "kubernetes_service" "restservice" {
  metadata {
    name = "restservice"
  }
  spec {
    selector = {
      App = kubernetes_deployment.datemsg.spec.0.template.0.metadata[0].labels.App
    }
    port {
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}