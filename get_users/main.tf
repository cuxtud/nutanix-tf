terraform {
  required_providers {
    nutanix = {
      source = "nutanix/nutanix"
      version = "1.8.1"
    }
  }
}

provider "nutanix" {
  username     = var.nutanix_username
  password     = var.nutanix_password
  endpoint     = var.nutanix_endpoint
  port         = var.nutanix_port
  insecure     = true
  wait_timeout = 10
}

data "nutanix_users" "users" {}

output "users" {
  value = data.nutanix_users.users
}
