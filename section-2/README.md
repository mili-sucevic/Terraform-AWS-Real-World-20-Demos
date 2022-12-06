# Terraform-on-AWS-with-SRE-IaC-DevOps-Real-World-20-Demos
### Mili Sucevic

## SECTION 2:
## Terraform & AWS CLI Installation

### Step-01: Introduction
- Install Terraform CLI
- Install AWS CLI
- Install VS Code Editor
- Install HashiCorp Terraform plugin for VS Code

### Step-02: MACOS: Terraform Install
- [Download Terraform MAC](https://www.terraform.io/downloads.html)
- [Install CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Unzip the package
```
# Copy binary zip file to a folder
mkdir /Users/<YOUR-USER>/Documents/terraform-install
COPY Package to "terraform-install" folder

# Unzip
unzip <PACKAGE-NAME>
unzip terraform_0.14.3_darwin_amd64.zip

# Copy terraform binary to /usr/local/bin
echo $PATH
mv terraform /usr/local/bin

# Verify Version
terraform version

# To Uninstall Terraform (NOT REQUIRED)
rm -rf /usr/local/bin/terraform
``` 

### Step-03: MACOS: IDE for Terraform - VS Code Editor
- [Microsoft Visual Studio Code Editor](https://code.visualstudio.com/download)
- [Hashicorp Terraform Plugin for VS Code](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)


### Step-04: MACOS: Install AWS CLI
- [AWS CLI Install](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
- [Install AWS CLI - MAC](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-install-cmd)

### Step-05: MACOS: Configure AWS Credentials 
- **Pre-requisite:** Should have AWS Account.
  - [Create an AWS Account](https://portal.aws.amazon.com/billing/signup?nc2=h_ct&src=header_signup&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/start)
- Generate Security Credentials using AWS Management Console
  - Go to Services -> IAM -> Users -> "Your-Admin-User" -> Security Credentials -> Create Access Key
- Configure AWS credentials using SSH Terminal on your local desktop

- Verify if we are able list S3 buckets
```
aws s3 ls
```

- Verify the AWS Credentials Profile
```
cat $HOME/.aws/credentials 
```

### Step-06: Terraform Command Basics
- terraform init: Initialize Terraform
- terraform validate: Terraform Validate
- terraform plan: Terraform Plan to Verify what it is going to create / update / destroy
- terraform apply: Terraform Apply to Create AWS Resources
- terraform destroy: Terraform Destroy to Destroy AWS Resources

### Step-07: Review terraform manifest for EC2 Instance
- Pre-Conditions-1: Ensure you have default-vpc in that respective region
- Pre-Conditions-2: Ensure AMI you are provisioning exists in that region if not update AMI ID
- Pre-Conditions-3: Verify your AWS Credentials in $HOME/.aws/credentials

### Step-08: Verify the EC2 Instance in AWS Management Console
- Go to AWS Management Console -> Services -> EC2
- Verify newly created EC2 instance

### Step-09: Destroy Infrastructure
- Destroy AWS Resources
```
terraform destroy
```

- Delete TF Files
```
rm -rf .terraform*
rm -rf terraform.tfstate*
```

### Step-10: Conclusion
- Re-iterate what we have learned in this section
- Learned about Important Terraform Commands:
  - terraform init
  - terraform validate
  - terraform plan
  - terraform apply
  - terraform destroy
