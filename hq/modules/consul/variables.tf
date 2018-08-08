variable "bootstrap_expect" {
  type = "string"
  default = "1"
}

variable "container_name" {
  type = "string"
}

variable "datacenter" {
  type = "string"
}

variable "data_volume_name" {
  type = "string"
}

variable "network" {
  type = "string"
}

variable "retry_join_address" {
  type = "string"
  default = ""
}
