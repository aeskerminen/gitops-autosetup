variable "pm_pass" {
  description = "Password for the Proxmox API user"
  type        = string
  default     = "terraform"
}

variable "ssh_public_key" {
  description = "Public key used for auth to LXC SSH"
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAING/pN9Od/PAglRzK2JwvTlIZZmcgpoglQMa4t1yXi95 kerminenartturi@gmail.com"
}