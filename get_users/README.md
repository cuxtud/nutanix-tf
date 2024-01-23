# Description
---
This example can be used to obtain a list of all users on Prism Central. Please note that the user must have logged in at least once to be included in the list.

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
Get the list

- `terraform init`
- `terraform plan`
- `terraform apply`

If you want the list in JSON format, you can use the following command afterwards:
- `terraform output -json users`

---
# More information
See: https://registry.terraform.io/providers/nutanix/nutanix/latest/docs/data-sources/users
