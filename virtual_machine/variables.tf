variable "nutanix_username" {
  description = "the Nutanix username for PE of PC"
  type        = string
}

variable "nutanix_password" {
  description = "the Nutanix password for PE of PC terraform user"
  type        = string
}

variable "nutanix_endpoint" {
  description = "the Nutanix endpoint address (PE of PC)"
  type        = string
}

variable "nutanix_port" {
  description = "the Nutanix endpoint port"
  type        = string
  default     = "9440"
}

variable "vm_vcpu" {
  description = "Number of cores for a vm"
  type        = string
}

variable "vm_name" {
  description = "start of the vm name"
  type        = string
}
