# Day 2 - Docker Deployment using Terraform

resource "docker_image" "nginx" {
  name         = "nginx:${var.image_tag}"
  keep_locally = false
}

resource "docker_container" "web" {
  name  = "${local.name_prefix}-${var.container_name}"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.external_port
  }

  dynamic "labels" {
    for_each = local.common_labels

    content {
      label = labels.key
      value = labels.value
    }
  }
}
