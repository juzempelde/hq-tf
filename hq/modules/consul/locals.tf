locals {
  container_args = [
    "agent",
    "-server",
    "-bootstrap-expect=${var.bootstrap_expect}",
    "-datacenter=${var.datacenter}"
  ]
}
