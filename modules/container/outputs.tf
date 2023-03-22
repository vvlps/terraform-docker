# output "container_name" {
#   value = docker_container.main[*].name
# }

output "application_access" {
  value = {for container in docker_container.main[*]: container.name => join(":", [container.network_data[0].ip_address, container.ports[0].external])}
}

