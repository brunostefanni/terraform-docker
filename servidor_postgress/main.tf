# Configure the Docker provider
provider "docker" {
  host = "${var.host_docker}"
}

resource "docker_image" "postgres" {
  name = "postgres:latest"
}

resource "docker_container" "database_trabalho_postgres" {
  image = "${docker_image.postgres.latest}"
  name  = "database_trabalho_postgres"
  env   = ["POSTGRES_PASSWORD=Bruno.123"]

  ports {
    internal = "${var.port_postgres}"
    external = "${var.port_postgres_externa}"
  }
}
