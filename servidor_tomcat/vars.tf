variable "port_tomcat" {
  description = "Porta que sera usada nos servidores tomcat"
  default     = 9090
}

variable "port_tomcat_externa" {
  description = "Porta que sera usada nos servidores tomcat"
  default     = 9091
}

variable "host_docker" {
  type        = "string"
  description = "host do docker"
  default     = "tcp://127.0.0.1:2375/"
}
