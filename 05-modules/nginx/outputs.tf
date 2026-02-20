output "image_id" {
  description = "ID of the Docker image"
  value       = module.nginx-module.image_id
}

output "container_id" {
  description = "ID of the Docker container"
  value       = module.nginx-module.container_id
}

output "nginx_url" {
  description = "The URL to access the app"
  value       = module.nginx-module.nginx_url
}
