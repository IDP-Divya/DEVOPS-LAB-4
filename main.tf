# main.tf

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "my_container" {
  name  = "my-web-app"
  image = "nginx:latest"
  ports {
    internal = 80
    external = 8080
  }
}
