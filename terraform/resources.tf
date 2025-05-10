resource "virtualbox_vm" "argocd-runner-host" {
  count     = 1
  name      = format("argocd-runner-host-%02d", count.index + 1)
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 2
  memory    = "4096 mib"
  user_data = file("${path.module}/user_data")

  network_adapter {
    type           = "bridged"
    host_interface = "wlo1"
  }
}