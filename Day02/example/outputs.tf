output "container_name" {
  description = "Docker container name"
  value       = docker_container.web.name
}

output "container_id" {
  description = "Docker container ID"
  value       = docker_container.web.id
}

output "image_name" {
  description = "Docker image"
  value       = docker_image.nginx.name
}

output "application_url" {
  description = "Access URL"
  value       = "http://localhost:${var.external_port}"
}

output "environment" {
  value = var.environment
}