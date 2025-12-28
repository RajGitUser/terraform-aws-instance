# AWS EC2 instance creation

This module creates EC2 Instance

# inputs

* ami_id -- (optional) Default value is ''' ami-09c813fb71547fc4f ''', if you didn't give the default then it is mandate
* instance_type -- (mandate) user can select the t3.micro or small or medium
* sg_id --- (mandate) user can give the security group id
* tags --- (optional) user can supply the tags to the EC2 instance

# outputs

* public_ip -- public IP created by the EC2 Instance
* private_ip -- private IP created by the EC2 instance
* instance_id -- instance Id Created by the EC2 Instance

⚙️ Terraform AWS EC2 Instance

This repository contains Terraform configurations to provision and manage an AWS EC2 instance using Infrastructure as Code (IaC). It enables you to declare cloud infrastructure in human-readable Terraform files and deploy a virtual machine on AWS in a repeatable and consistent way.

Terraform uses resources defined in code to create, update, and destroy infrastructure safely and efficiently. 
Terraform Registry

🧠 About

This project shows how to create an AWS EC2 instance using Terraform by defining the necessary infrastructure components such as compute instance, networking, and security resources. The code demonstrates how Terraform interacts with AWS APIs to manage infrastructure lifecycle and provides a foundation for expanding into more complex infrastructure provisioning tasks. 
Terraform Registry

(Actual files may vary depending on your implementation.)

🛠️ Prerequisites

Before you begin:

✔ Install Terraform CLI (v1.x or later)
✔ AWS CLI configured with valid credentials
✔ AWS account with permissions to create EC2 and networking resources
✔ Basic understanding of Terraform HCL and AWS services

🚀 Usage
1. Clone the Repository
git clone https://github.com/RajGitUser/terraform-aws-instance.git
cd terraform-aws-instance

2. Initialize Terraform
terraform init


This command initializes the working directory and downloads the required provider plugins.

3. Plan Infrastructure
terraform plan -var-file="terraform.tfvars"


Review the execution plan to understand what changes Terraform will make.

4. Apply Configuration
terraform apply -var-file="terraform.tfvars"


Confirm the prompt to provision the EC2 instance and associated resources.

5. Destroy Infrastructure
terraform destroy -var-file="terraform.tfvars"


Use this command to clean up all resources created by this configuration.

📌 Example EC2 Resource

A simple EC2 instance resource might look like:

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  tags = {
    Name = "example-instance"
  }
}


Terraform uses this definition to create the AWS EC2 instance. 
Terraform Registry

🧰 Best Practices

✔ Declare variables in variables.tf for reusable infrastructure. 
Spacelift

✔ Use .tfvars for environment-specific values and avoid hardcoding. 
Spacelift

✔ Use remote backends (S3, Terraform Cloud) to manage state securely in teams. 
Spacelift

✔ Tag AWS resources for cost tracking and management.

🤝 Contributing

Contributions are welcome! You can:

Add examples for different instance types

Implement VPC and networking automation

Integrate with other AWS services (ALB, RDS, IAM)

Add modules for reusable infrastructure

Fork the repo

Create a branch

Submit a pull request
