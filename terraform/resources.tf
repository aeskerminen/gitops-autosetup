resource "proxmox_lxc" "basic" {
  target_node  = "huber"
  hostname     = "lxc-basic-tf-test"
  ostemplate   = "local:vztmpl/ubuntu-24.10-standard_24.10-1_amd64.tar.zst"
  password     = "BasicLXCContainer"
  unprivileged = true

  rootfs {
    storage = "local-lvm"
    size    = "4G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
}