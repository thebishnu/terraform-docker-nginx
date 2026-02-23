terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

# Pulls the image
resource "docker_image" "nginx" {
  name         = var.image_name
  keep_locally = false
}

# Create a container
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  volumes {
    host_path      = abspath("${path.module}/html") # Terraform looks for the html folder relative to the module's location
    container_path = "/usr/share/nginx/html"
    read_only      = true
  }
  ports {
    internal = 80
    external = var.external_port
  }
}
