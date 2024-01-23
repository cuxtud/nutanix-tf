# Description
---
This template is a starting point that can be used to create a deployment with Terraform for Nutanix resources.

# Getting Started
---
- Clone this repo
- Change the defaults values of the variables in the file **variables.tf** or create a file **terraform.tfvars**
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

# How to use it?
---
Create the resources

- `terraform init`
- `terraform plan`
- `terraform apply`

Delete the resources
- `terraform destroy`
---
# More information
See: https://registry.terraform.io/providers/nutanix/nutanix/latest/docs
