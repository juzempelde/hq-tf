resource "docker_container" "consul" {
  name = "${var.container_name}"
  image = "${docker_image.consul.latest}"
  restart = "always"

  command = "${compact (local.container_args)}"

  volumes {
    volume_name = "${var.data_volume_name}"
    container_path = "/consul/data"
  }

  networks = ["${var.network}"]
}
