# Configure the Docker provider
provider "docker" {
  host = "${var.host_docker}"
}

resource "docker_image" "tomcat" {
  name = "tomcat:latest"
}

resource "docker_container" "tomcat_1" {
  image = "${docker_image.tomcat.latest}"
  name  = "tomcat_1"

  ports {
    internal = "${var.port_tomcat}"
    external = "${var.port_tomcat}"
  }
}

resource "docker_container" "tomcat_2" {
  image = "${docker_image.tomcat.latest}"
  name  = "tomcat_2"

  ports {
    internal = "${var.port_tomcat}"
    external = "${var.port_tomcat_externa}"
  }
}
