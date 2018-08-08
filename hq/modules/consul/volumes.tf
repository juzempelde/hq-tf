resource "docker_volume" "data" {
  name = "${var.data_volume_name}"
}
