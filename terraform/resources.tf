resource "proxmox_lxc" "basic" {
  target_node  = "huber"
  hostname     = "lxc-basic-tf-test"
  ostemplate   = "local:vztmpl/ubuntu-24.10-standard_24.10-1_amd64.tar.zst"
  password     = "rootroot"
  unprivileged = true
  start = true
  onboot = true

  rootfs {
    storage = "local-lvm"
    size    = "8G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "192.168.1.120/24"
  }
}