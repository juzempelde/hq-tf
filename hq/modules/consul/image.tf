resource "docker_image" "consul" {
  name = "consul:1.2.2"
  keep_locally = true
}
