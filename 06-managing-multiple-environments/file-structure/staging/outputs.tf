output "staging_image_id" {
  value = module.nginx-web-module.image_id
}

output "staging_container_id" {
  value = module.nginx-web-module.container_id
}

output "staging_url" {
  value = module.nginx-web-module.nginx_url
}
