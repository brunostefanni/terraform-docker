# Configure the Docker provider
provider "docker" {
  host = "${var.host_docker}"
}

resource "docker_container" "apache_1" {
  image = "${docker_image.httpd.latest}"
  name  = "apache_1"

  ports {
    internal = "${var.port_apache}"
    external = "${var.port_apache}"
  }

  upload {
    content = "${file("${var.path_arquivo_index}")}"
    file    = "/usr/local/apache2/htdocs/espec-iac/index.html"
  }
}

resource "docker_container" "apache_2" {
  image = "${docker_image.httpd.latest}"
  name  = "apache_2"

  ports {
    internal = "${var.port_apache}"
    external = "${var.port_apache_2_externa}"
  }

  upload {
    content = "${file("${var.path_arquivo_index}")}"
    file    = "/usr/local/apache2/htdocs/espec-iac/index.html"
  }
}

resource "docker_image" "httpd" {
  name = "httpd:latest"
}
