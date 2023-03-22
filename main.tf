module "docker_image" {
for_each = var.definition_containers
  source    = "./modules/image"
  image = each.value[var.env].image

}

module "docker_container" {
for_each = var.definition_containers
  source                  = "./modules/container"
  container_name          = each.key
  container_port_external = each.value[var.env].ext_port
  container_port_internal = each.value[var.env].int_port
  image_id = module.docker_image[each.key].image_id
}