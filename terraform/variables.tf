variable "api_token" {
  type        = string
  description = "Token API de Clouding"
}

variable "server_name" {
  type    = string
  default = "prestamo-libros"
}

variable "server_plan" {
  type    = string
  default = "1GB"  # 1GB, 2GB, 4GB
}

variable "ssh_key" {
  type        = string
  description = "Contenido de tu clave pública SSH (~/.ssh/id_rsa.pub)"
}
