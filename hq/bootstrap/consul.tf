locals {
  bootstrap_expect = "3"
  main_server = "consul1"
  datacenter = "juz"
  network = "all"
}

module "consul_server_1" {
  source = "../modules/consul"

  bootstrap_expect = "${local.bootstrap_expect}"
  container_name = "${local.main_server}"
  datacenter = "${local.datacenter}"
  data_volume_name = "consul1"
  network = "${docker_network.all.id}"
}

module "consul_server_2" {
  source = "../modules/consul"

  bootstrap_expect = "${local.bootstrap_expect}"
  container_name = "consul2"
  datacenter = "${local.datacenter}"
  data_volume_name = "consul2"
  network = "${docker_network.all.id}"
  retry_join_address = "${local.main_server}"
}

module "consul_server_3" {
  source = "../modules/consul"

  bootstrap_expect = "${local.bootstrap_expect}"
  container_name = "consul3"
  datacenter = "${local.datacenter}"
  data_volume_name = "consul3"
  network = "${docker_network.all.id}"
  retry_join_address = "${local.main_server}"
}
