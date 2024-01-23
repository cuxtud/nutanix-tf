# default password arch image: arch / arch
terraform {
  required_providers {
    nutanix = {
      source = "nutanix/nutanix"
      version = "1.8.1"
    }
  }
}

locals {
  image_name        = "Arch Linux"
  image_description = "Arch-Linux-x86_64-basic"
  image_url         = "https://geo.mirror.pkgbuild.com/images/latest/Arch-Linux-x86_64-basic.qcow2"
}

provider "nutanix" {
  username     = var.nutanix_username
  password     = var.nutanix_password
  endpoint     = var.nutanix_endpoint
  port         = var.nutanix_port
  insecure     = true
  wait_timeout = 10
}

resource "nutanix_image" "image" {
  name        = local.image_name
  description = local.image_description
  source_uri  = local.image_url
}

output "image_info" {
  value = nutanix_image.image
}