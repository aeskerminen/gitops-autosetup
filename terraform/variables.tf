variable "hostname_prefix" {
  description = "Prefix for VM hostanme that contains k8s, argocd, and github runner."
  type        = string
  default     = "argocd-runner-host"
}