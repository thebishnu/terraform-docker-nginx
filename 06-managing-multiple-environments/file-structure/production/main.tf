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
  container_name = "nginx-prod"
  external_port  = 9090
}
