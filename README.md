# Terraform AWS EC2 Deployment

This project provisions an **AWS EC2 instance** using Terraform. It includes a security group to allow **HTTP (port 80) and SSH (port 22) access**. The instance is created using an Ubuntu AMI and is tagged accordingly.

## 🛠️ Prerequisites

Before running this Terraform configuration, ensure you have the following:

1. **Terraform** installed ([Download Terraform](https://developer.hashicorp.com/terraform/downloads))
2. **AWS CLI** installed ([Download AWS CLI](https://aws.amazon.com/cli/))
3. **AWS Credentials** configured (`~/.aws/credentials` or via `aws configure`)
4. **SSH Key Pair** created in AWS to access the EC2 instance

---

## 📁 Project Structure
├── main.tf # Defines EC2 instance and security group 
├── provider.tf # AWS provider configuration 
├── variables.tf # Input variables for flexibility 
├── terraform.tfvars # Assigns values to variables 
├── outputs.tf # Outputs public IP of EC2 instance 
├── userdata.sh # script to setup a web server
├── README.md # Instructions for setup

---

## 🚀 Deployment Steps

### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/KadiriMadhavaReddy/RELX_Repo.git
cd RELX_Repo

#Initialize Terraform to download the required provider plugins:
terraform init

#Edit terraform.tfvars to set the correct values:
aws_region        = "us-east-1"
ami_id            = "ami-12345678" # Replace with a valid AMI ID
instance_type     = "t2.micro"
security_group_name = "web-security-group"

#Check what Terraform will create:
terraform plan

#Deploy the EC2 instance and security group:
terraform apply

# Once applied, Terraform will output the public IP:
terraform output public_ip

#By providing the instance ip Address with portnumber 80 we can access our application
http://34.227.157.68:80




