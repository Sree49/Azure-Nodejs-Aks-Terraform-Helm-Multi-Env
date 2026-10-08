resource "helm_release" "node_app" {
  name             = "my-node-app"
  chart            = var.chart_path
  namespace        = "apps"
  create_namespace = true
  cleanup_on_fail  = true

  values = [
    file("${path.module}/../../environments/${var.environment}.yaml")
  ]

  set {
    name  = "image.repository"
    value = "${var.acr_login_server}/my-app"
  }

  set {
    name  = "image.tag"
    value = var.app_image_tag
  }
}