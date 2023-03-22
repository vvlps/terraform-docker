resource "random_string" "random" {
  count   = length(var.container_port_external)
  length  = 6
  special = false
  upper = false
}

resource "docker_container" "main" {
  count = length(var.container_port_external)
  name  = join("-", [var.container_name], [random_string.random[count.index].result])
  image = var.image_id
  ports {
    internal = var.container_port_internal
    external = var.container_port_external[count.index]
  }
}
