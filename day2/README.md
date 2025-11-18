# BOA_terraform_level1_17thNov2025

### Revision info 

<img src="rev1.png">

### doing terraform INit 

```
ec2-user@ip-172-31-16-77 ashu-project]$ cd day2-code/
[ec2-user@ip-172-31-16-77 day2-code]$ ls
outputs.tf  providers.tf
[ec2-user@ip-172-31-16-77 day2-code]$ terraform  init 
Initializing the backend...
Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.21.0...
- Installed hashicorp/aws v6.21.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.


====> .terraform directory 

ls  -a
.  ..  .terraform  .terraform.lock.hcl  outputs.tf  providers.tf


[ec2-user@ip-172-31-16-77 day2-code]$ tree .terraform
.terraform
└── providers
    └── registry.terraform.io
        └── hashicorp
            └── aws
                └── 6.21.0
                    └── linux_amd64
                        ├── LICENSE.txt
                        └── terraform-provider-aws_v6.21.0_x5

```

### replace variable default values in terraform plan 

```
terraform  plan   -var  machine_size="t2.small"   -var vm_name="ashutoshh-vmm"

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
      + ami                                  = "ami-0cae6d6fe6048ca2c"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)

```
### passing tfvars file 

```
terraform  plan    -var-file  myvar-values.tfvars
terraform  apply    -var-file  myvar-values.tfvars
```

