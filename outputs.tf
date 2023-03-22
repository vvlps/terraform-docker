# output "container_name" {
#   value = module.docker_container.container_name

# }

output "application_access" {
  value = [for container in module.docker_container[*] : container]
}

# output "application_access" {
#   value = module.docker_container.ip_address[0]
#   # [for container in module.docker_container[*]: join(":", [module.docker_container.network_data.ip_address, module.docker_container.ports.external])]
# }

# output "image_id" {
#   value       = module.docker_image.image_id
#   description = "ID da imagem docker"
# }