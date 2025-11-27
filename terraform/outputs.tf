output "public_ip" {
  value = clouding_server.k8s_master.ipv4_address
}

output "ssh_access" {
  value = "ssh root@${clouding_server.k8s_master.ipv4_address}"
}
