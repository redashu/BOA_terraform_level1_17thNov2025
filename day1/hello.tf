provider "aws" {

#    access_key = ""
#    secret_key = ""
   region = "us-east-1"
  
}

# creating ec2 machine in NV region 

resource "aws_instance" "example" {
    ami = "ami-0cae6d6fe6048ca2c"
    instance_type = "t2.nano"
    tags = {
      Name = "ashutoshh-vm1"
    }
}
