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

resource "nutanix_category_key" "single_value_key" {
  name = "AppCluster"
  description = "Cluster to deploy the application"
}

resource "nutanix_category_value" "single_value" {
  name = nutanix_category_key.single_value_key.name
  description = "Cluster to deploy the application"
  value = "Cluster1"
}

resource "nutanix_category_key" "Sequential_numbering_key" {
  name = "AppServers"
  description = "Servers to deploy the application"
}

resource "nutanix_category_value" "Sequential_numbering_values" {
  count=10
  name = nutanix_category_key.Sequential_numbering_key.name
  description = "Server-${count.index}"
  value = "Server-${count.index}"
}


resource "nutanix_category_key" "list_of_values_key" {
  name = "AppDatacenters"
  description = "Datacenters to deploy the application"
}

resource "nutanix_category_value" "list_of_values" {
  name = nutanix_category_key.list_of_values_key.name
  for_each = toset( ["Amsterdam", "Rotterdam", "Utrecht", "Groningen"] )    
    description = "Datacenter ${each.key}"
    value = each.key
}


