# Description
---
This example can be used to create an image on a Nutanix cluster. The QCOW image to deploy is located on a webserver. In this example the public available image of Arch Linux will be used. The default credentials of this image are username: **arch** and password: **arch**.

# Getting Started
---
- Clone this repo
- Change the defaults values of the variables in the file **variables.tf** or create a file **terraform.tfvars**
- Change the values of the locals in file **main.tf** if needed
- run Terraform

Example of the content of file **terraform.tfvars**
```
nutanix_username = "admin"
nutanix_password = "password"
ntuanix_endpoint = "nutanix01.metisit.net"
nutanix_port     = "9440"
```

*Note*: the file **terraform.tfvars** is excluded from the repository. This allows you to assign sensitive information to variables without adding it to the repository.

# Prerequisites
- An image on the cluster is available
- A network/subnet on the cluster is available
- The storagecontainer_uuid the VM will be deployed is available. You can get the storagecontainer_uuid with the following command on the CVM: `ncli container list name=<storage container name>`


# Description of the variables
---
| Variable          | Description                              |  Example              |
| :--------------   | :--------------------------------------  | :-------------------  |
| nutanix_username  | the Nutanix username for PE of PC        | admin                 |
| nutanix_password  | the Nutanix password for PE of PC        | password              |
| nutanix_endpoint  | the Nutanix endpoint address (PE of PC)  | nutanix01.metisit.net |
| nutanix_port      | the Nutanix endpoint port                | 9440                  |

# Description of the locals
---
| local                 | Description                                                             |  Example                                                                   |
| :-------------------- | :---------------------------------------------------------------------- | :------------------------------------------------------------------------- |
| cluster_name          | The name of the cluster the VM will be deployed                         | nutanix01                                                                  |
| subnet_name           | The subnet on the cluster the VM will use                               | VLAN50                                                                     |
| storagecontainer_uuid | The UUID of the Storage Container the VM will be deployed               | 8bda1107-1001-420c-a126-33c1b5bf19a9                                       |
| image_name            | The name of the image on the cluster that will be used to deploy the VM | Arch Linux                                                                 |

# How to use it?
---
Create the virtual machine

- `terraform init`
- `terraform plan`
- `terraform apply`

Delete the virtual machine
- `terraform destroy`
---
# More information
See: https://registry.terraform.io/providers/nutanix/nutanix/latest/docs