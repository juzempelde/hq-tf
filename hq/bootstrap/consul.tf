locals {
  bootstrap_expect = "3"
  datacenter = "juz"
  network = "all"
}

module "consul_1" {
  source = "../modules/consul"

  bootstrap_expect = "${local.bootstrap_expect}"
  container_name = "consul1"
  datacenter = "${local.datacenter}"
  data_volume_name = "consul1"
  network = "${docker_network.all.id}"
}

module "consul_2" {
  source = "../modules/consul"

  bootstrap_expect = "${local.bootstrap_expect}"
  container_name = "consul2"
  datacenter = "${local.datacenter}"
  data_volume_name = "consul2"
  network = "${docker_network.all.id}"
  retry_join_address = "consul1"
}

module "consul_3" {
  source = "../modules/consul"

  bootstrap_expect = "${local.bootstrap_expect}"
  container_name = "consul3"
  datacenter = "${local.datacenter}"
  data_volume_name = "consul3"
  network = "${docker_network.all.id}"
  retry_join_address = "consul1"
}
