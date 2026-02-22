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
  environment_name = "staging"
}

module "nginx-web-module" {
  source         = "../../../05-modules/nginx-web-module"
  container_name = "nginx-staging"
  external_port  = 8080
}
