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
