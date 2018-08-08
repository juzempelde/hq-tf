resource "docker_container" "consul" {
  name = "${var.container_name}"
  image = "${docker_image.consul.latest}"
  restart = "always"

  command = [
    "agent",
    "-server",
    "-bootstrap-expect=${var.bootstrap_expect}",
    "-datacenter=${var.datacenter}"
  ]

  volumes {
    volume_name = "${var.data_volume_name}"
    container_path = "/consul/data"
  }

  networks = ["${var.network}"]
}
