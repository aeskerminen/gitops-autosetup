terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc8"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://192.168.1.100:8006/api2/json"
  pm_user = "terraform-prov@pve"
  pm_password = var.pm_pass
  pm_tls_insecure = true # By default Proxmox Virtual Environment uses self-signed certificates.
}
