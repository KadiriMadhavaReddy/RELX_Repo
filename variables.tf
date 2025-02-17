# Define AWS Region
variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# EC2 instance type
variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# AMI ID for the EC2 instance
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Example for Ubuntu 20.04
}

# SSH Key Pair for EC2 instance
variable "key_name" {
  description = "The SSH key pair for EC2 instance access"
  type        = string
  default     = "my-key-pair"
}

# Subnet ID where the EC2 instance will be deployed
variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
}

# Security Group Name
variable "security_group_name" {
  description = "Security group for the EC2 instance"
  type        = string
  default     = "web-security-group"
}

# Tags to apply to the EC2 instance
variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default     = {
    Name = "Terraform-EC2-Web"
  }
}
