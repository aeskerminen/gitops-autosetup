output "IPAddr" {
  value = element(virtualbox_vm.argocd-runner-host.*.network_adapter.0.ipv4_address, 1)
}