variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "docker-with-terraform"
}

variable "nginx_port" {
  description = "Port to expose Nginx on host"
  type        = number
  default     = 8888
}
