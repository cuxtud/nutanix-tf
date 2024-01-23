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

locals {
  cluster_name = "nutanix-cluster-dev-east"  # Spefify clustername to deploy VM on
  subnet_name  = "labs_nutanix_1a"     # Specify subnet to assign to the deployed VM
 # storagecontainer_uuid = "ecc51f12-2263-461f-8c4f-b2a726b05d6a" # Specify storage container uuid (ncli container list name=<storage container name>)
  image_name = "Morpheus Ubuntu 22.04 20230822"
}

data "nutanix_image" "image" {
    image_name = local.image_name
}

data "nutanix_cluster" "cluster" {
  name = local.cluster_name
}

data "nutanix_subnet" "subnet" {
  subnet_name = local.subnet_name
}

resource "nutanix_virtual_machine" "vm" {
  count = 2
  name                 = "aa-tftest-cmdb-${count.index}"
  cluster_uuid         = data.nutanix_cluster.cluster.id
  num_vcpus_per_socket = "2"
  num_sockets          = "1"
  memory_size_mib      = 1024

  disk_list {
    data_source_reference = {
      kind = "image"
      uuid = data.nutanix_image.image.id
    }
  }

  disk_list {
    disk_size_bytes = 10 * 1024 * 1024 * 1024
    device_properties {
      device_type = "DISK"
      disk_address = {
        "adapter_type" = "SCSI"
        "device_index" = "1"
      }
    }

    # storage_config {
    #   storage_container_reference {
    #     kind = "storage_container"
    #     uuid = local.storagecontainer_uuid
    #   }
    # }
  }

  nic_list {
    subnet_uuid = data.nutanix_subnet.subnet.id
  }
}

output "vm_info" {
  value = nutanix_virtual_machine.vm
}

output "vm_ip_vm0" {
  value = nutanix_virtual_machine.vm[0].nic_list_status[0].ip_endpoint_list[0].ip
}

output "vm_ip_vm1" {
  value = nutanix_virtual_machine.vm[1].nic_list_status[0].ip_endpoint_list[0].ip
}