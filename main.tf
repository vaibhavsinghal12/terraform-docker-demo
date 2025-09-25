terraform {
  required_version = ">= 1.2.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      # Pin to a stable 3.x series (change if you need a different version).
      version = "~> 3.6"
    }
  }
}

# Provider configuration
provider "docker" {
  # For Linux / macOS (default): connect to Docker socket
  host = "unix:///var/run/docker.sock"

  # For Windows (Docker Desktop), uncomment the next line instead and comment out the unix socket line:
  # host = "npipe:////./pipe/docker_engine"
}

# Pull an nginx image to the docker host
resource "docker_image" "nginx" {
  name         = "nginx:stable"
  keep_locally = false
}

# Create a container from the pulled image
resource "docker_container" "nginx" {
  name  = "nginx_terraform"
  # Use the image id returned by the docker_image resource
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }

  restart = "unless-stopped"
}

# Useful outputs
output "container_id" {
  value = docker_container.nginx.id
}

output "container_name" {
  value = docker_container.nginx.name
}

