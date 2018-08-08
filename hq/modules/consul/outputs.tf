output "container_ip_address" {
  value = "${docker_container.consul.ip_address}"
}
