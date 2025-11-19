# BOA_terraform_level1_17thNov2025

### Git workflow 

<img src="gitf.png">

### git add / commit 

```
 ls
ashutoshh-boa-terraform-cicd  day1-code  day2-code
[ec2-user@ip-172-31-16-77 ashu-project]$ cd  ashutoshh-boa-terraform-cicd/
[ec2-user@ip-172-31-16-77 ashutoshh-boa-terraform-cicd]$ ls
README.md  data.tf  ec2.tf  outputs.tf  providers.tf  security-groups.tf  terraform.tfvars  variables.tf
[ec2-user@ip-172-31-16-77 ashutoshh-boa-terraform-cicd]$ 
[ec2-user@ip-172-31-16-77 ashutoshh-boa-terraform-cicd]$ git add  .
[ec2-user@ip-172-31-16-77 ashutoshh-boa-terraform-cicd]$ git commit  -m "updating terraform"
[master a98b121] updating terraform
 Committer: EC2 Default User <ec2-user@ip-172-31-16-77.ec2.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 2 files changed, 19 insertions(+)
 create mode 100644 data.tf
 create mode 100644 security-groups.tf

 ```
 ## understanding cicd 

 <img src="cicd1.png">

 ### auto trigger job 

  <img src="cicd2.png">

  