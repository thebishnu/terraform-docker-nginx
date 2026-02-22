output "production_image_id" {
  value = module.nginx-web-module.image_id
}

output "production_container_id" {
  value = module.nginx-web-module.container_id
}

output "production_url" {
  value = module.nginx-web-module.nginx_url
}
