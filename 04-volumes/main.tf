terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Create a container
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  volumes {
    host_path      = "${path.cwd}/html" # Current working directory
    container_path = "/usr/share/nginx/html"
    read_only      = true
  }
  ports {
    internal = 80
    external = var.external_port
  }
}
