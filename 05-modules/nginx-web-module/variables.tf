variable "image_name" {
  description = "Name of the Docker image"
  type        = string
  default     = "nginx:latest"
}

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
