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
| local             | Description                                 |  Example                                                                   |
| :--------------   | :------------------------------------------ | :------------------------------------------------------------------------- |
| image_name        | The name of the image                       | Arch Linux                                                                 |
| image_description | The description of the image                | Arch-Linux-x86_64-basic                                                    |
| image_url         | The URL of the location of the QCOW image   | https://geo.mirror.pkgbuild.com/images/latest/Arch-Linux-x86_64-basic.qcow |


# How to use it?
---
Create the image

- `terraform init`
- `terraform plan`
- `terraform apply`

Delete the image
- `terraform destroy`
---
# More information
See: https://registry.terraform.io/providers/nutanix/nutanix/latest/docs
