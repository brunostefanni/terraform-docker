variable "port_apache" {
  description = "Porta que sera usada nos servidores tomcat"
  default     = 80
}

variable "port_apache_2_externa" {
  description = "Porta que sera usada nos servidores tomcat"
  default     = 80
}

variable "path_arquivo_index" {
  type        = "string"
  description = "Caminho absoluto do arquivo html"
  default     = "./index.html"
}

variable "host_docker" {
  type        = "string"
  description = "host do docker"
  default     = "tcp://127.0.0.1:2375/"
}
