variable "env" {
  type        = string
  description = "Ambiente"
}

variable "definition_containers" {
  type        = map(any)
  description = "Map da imagem docker"
}


variable "container_name" {
  type        = string
  description = "Nome do container"
}

variable "container_port_internal" {
  type        = number
  description = "Porta interna do container"
}

variable "container_port_external" {
  type        = list(number)
  description = "Porta externa do container"
}