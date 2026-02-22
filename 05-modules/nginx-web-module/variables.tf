variable "container_name" {
  description = "Name for the Docker container"
  type        = string
  default     = "docker-with-terraform"
}

variable "external_port" {
  description = "The port the webserver will listen on"
  type        = number
  default     = 8888
}
