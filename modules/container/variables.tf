variable "image_id" {
  type = string
  description = "ID da imagem docker"
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
  type        = list(any)
  description = "Porta externa do container"
  validation {
    condition = min(var.container_port_external...) >= 30000 && max(var.container_port_external...) <= 32000
    error_message = "Essa porta não é permitida. Por favor escolha a porta que esteja no range 30000-32000"
  }
}