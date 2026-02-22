output "image_id" {
  description = "ID of the Docker image"
  value       = module.nginx-web-module.image_id
}

output "container_id" {
  description = "ID of the Docker container"
  value       = module.nginx-web-module.container_id
}

output "access_link" {
  description = "The URL to access the app"
  value       = module.nginx-web-module.nginx_url
}
