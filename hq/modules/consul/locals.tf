locals {
  container_args = [
    "agent",
    "${var.role == "server" ? "-server" : ""}",
    "${var.role == "server" ? "-bootstrap-expect=${var.bootstrap_expect}" : ""}",
    "-datacenter=${var.datacenter}",
    "-bind={{ GetPrivateIP }}",
    "-advertise={{ GetPublicIP }}",
    "${var.retry_join_address == "" ? "" : "-retry-join=${var.retry_join_address}"}",
    "${var.role == "ui" ? "-ui" : ""}"
  ]
}
