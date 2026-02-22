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

module "nginx-web-module" {
  source = "../nginx-web-module"
  container_name = "nginx-web-server"
  external_port  = 9000
}
