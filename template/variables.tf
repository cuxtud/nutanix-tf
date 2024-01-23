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
