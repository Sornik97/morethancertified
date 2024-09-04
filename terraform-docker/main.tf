terraform {
    required_providers {
      docker = {
        source = "kreuzwerker/docker"
        version = "~> 3.0.0"
      }
    }
}
provider "docker" {
    host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nodered_image" {
  name = "nodered/node-red:latest-22"
}


