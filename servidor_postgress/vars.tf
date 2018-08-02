variable "port_postgres" {
  description = "Porta que sera usada nos servidores tomcat"
  default     = 5232
}

variable "port_postgres_externa" {
  description = "Porta que sera usada nos servidores tomcat"
  default     = 5232
}

variable "host_docker" {
  type        = "string"
  description = "host do docker"
  default     = "tcp://127.0.0.1:2375/"
}
