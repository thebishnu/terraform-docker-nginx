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

locals {
  environment_name = "production"
}

module "nginx-web-module" {
  source         = "../../../05-modules/nginx-web-module"

  # Pass variables to the module
  container_name = var.container_name
  external_port  = var.external_port
}
