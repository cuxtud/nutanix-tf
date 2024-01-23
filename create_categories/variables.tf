variable "nutanix_username" {
  description = "the Nutanix username for PE of PC"
  type        = string
  default     = "terraform"
}

variable "nutanix_password" {
  description = "the Nutanix password for PE of PC terraform user"
  type        = string
  default     = "<nutanix password>"
}

variable "nutanix_endpoint" {
  description = "the Nutanix endpoint address (PE of PC)"
  type        = string
  default     = "pc.metisit.net"
}

variable "nutanix_port" {
  description = "the Nutanix endpoint port"
  type        = string
  default     = "9440"
}
