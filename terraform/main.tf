resource "clouding_ssh_key" "main" {
  name       = "main-key"
  public_key = var.ssh_key
}

resource "clouding_server" "k8s_master" {
  name     = var.server_name
  plan     = var.server_plan
  image    = "ubuntu-22.04"
  ssh_keys = [clouding_ssh_key.main.id]

  network {
    ipv4 = "dhcp"
    ipv6 = true
  }
}
