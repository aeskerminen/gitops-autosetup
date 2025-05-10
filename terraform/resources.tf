resource "virtualbox_vm" "runner" {
  count     = 1
  name      = format("%s-%02d", var.hostname_prefix, count.index + 1)
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 2
  memory    = "4096 mib"
  user_data = file("${path.module}/user_data")

  network_adapter {
    type           = "bridged"
    host_interface = "wlo1"
  }
}