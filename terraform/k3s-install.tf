resource "null_resource" "install_k3s" {
  depends_on = [clouding_server.k8s_master]

  connection {
    type        = "ssh"
    host        = clouding_server.k8s_master.ipv4_address
    user        = "root"
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "apt update -y",
      "curl -sfL https://get.k3s.io | sh -",
      "echo 'K3s instalado 🚀'"
    ]
  }
}
