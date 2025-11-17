# BOA_terraform_level1_17thNov2025

### problem with scripting options while creating Infra 

<img src="prob1.png">

### replacing all scripting lang with HCL 

<img src="hcl1.png">

### HCL / terraform as Declearative understanding 

<img src="hcl2.png">

## info about terraform providers 


<img src="pro1.png">


## accessing aws as scriptiong we have access / secret keys 

<img src="pro2.png">

## terraform workflow 

### step to run HCL code 

### terraform init 

```
ec2-user@ip-172-31-16-77 ashu-project]$ ls
hello.tf
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform  init 
Initializing the backend...
Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.21.0...
- Installed hashicorp/aws v6.21.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

```
### checking what is going to happen

```
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform  plan 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
      + ami                                  = "ami-0cae6d6fe6048ca2c"
      + arn                                  = (known after apply)

```

### terraform apply 

```
terraform  apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
      + ami                                  = "ami-0cae6d6fe6048ca2c"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + force_destroy                        = false
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.nano"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_group_id                   = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + region                               = "us-east-1"
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + primary_network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.example: Creating...
aws_instance.example: Still creating... [00m10s elapsed]
aws_instance.example: Creation complete after 13s [id=i-08ae8669913477278]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

```

### Destroying resources by terraform 

```
terraform plan 
aws_instance.example: Refreshing state... [id=i-08ae8669913477278]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform destroy 
aws_instance.example: Refreshing state... [id=i-08ae8669913477278]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.example will be destroyed
  - resource "aws_instance" "example" {
      - ami                                  = "ami-0cae6d6fe6048ca2c" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:992382386705:instance/i-08ae8669913477278" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1d" -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null

```

### terraform tfstate understanding 

<img src="tfstate.png">


### terraform state options 

```
terraform   state  list
aws_instance.example
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform   state  show  aws_instance.example 
# aws_instance.example:
resource "aws_instance" "example" {
    ami                                  = "ami-0cae6d6fe6048ca2c"
    arn                                  = "arn:aws:ec2:us-east-1:992382386705:instance/i-074794c01ebbf791b"
    associate_public_ip_address          = true
    availability_zone                    = "us-east-1d"
    disable_api_stop                     = false
    disable_api_termination              = false
    ebs_optimized                        = false
    force_destroy                        = false
    get_password_data                    = false
    hibernation                          = false
    host_id                              = null
    iam_instance_profile                 = null
    id                                   = "i-074794c01ebbf791b"
```

### after adding output section -- apply 

```
ec2-user@ip-172-31-16-77 ashu-project]$ 
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform  apply 
aws_instance.example: Refreshing state... [id=i-074794c01ebbf791b]

Changes to Outputs:
  + my-ec2-public-ipaddress = "50.17.127.6"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes


Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

my-ec2-public-ipaddress = "50.17.127.6"

```
### terraform more commands 

```
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform fmt 
hello.tf
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform  validate 
╷
│ Error: Missing required argument
│ 
│   with aws_instance.example,
│   on hello.tf line 11, in resource "aws_instance" "example":
│   11: resource "aws_instance" "example" {
│ 
│ "ami": one of `ami,launch_template` must be specified
╵
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform  plan 
╷
│ Error: Missing required argument
│ 
│   with aws_instance.example,
│   on hello.tf line 11, in resource "aws_instance" "example":
│   11: resource "aws_instance" "example" {
│ 
│ "ami": one of `ami,launch_template` must be specified
╵
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform  validate 
Success! The configuration is valid.

```
### terraform core workflow 

<img src="tfw.png">

### terraform output 

```
ec2-user@ip-172-31-16-77 ashu-project]$ terraform output
ashu-vm-private-ip = "172.31.30.144"
my-ec2-current-status = "running"
my-ec2-public-ipaddress = "54.226.61.251"
[ec2-user@ip-172-31-16-77 ashu-project]$ 
[ec2-user@ip-172-31-16-77 ashu-project]$ 
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform output  ashu-vm-private-ip 
"172.31.30.144"
[ec2-user@ip-172-31-16-77 ashu-project]$ terraform output --raw  ashu-vm-private-ip 
172.31.30.144[ec2-user@ip-172-31-16-77 ashu-project]$ 

```
### selecting particular resources 

```
 120  terraform apply -target aws_security_group.ashu_sec-groups  -target aws_vpc_security_group_egress_rule.allow_all_traffic_ipv4
  121  history 
  122  terraform destroy -target aws_security_group.ashu_sec-groups  -target aws_vpc_security_group_egress_rule.allow_all_traffic_ipv4
  123  history 

```
