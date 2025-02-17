# AWS region
aws_region  = "us-east-1"
# AMI ID 
ami_id      = "ami-04b4f1a9cf54c11d0" 
# Instance type
instance_type = "t2.micro"
# Subnet ID 
subnet_id    = "subnet-0278e93d07ae21ca0"  
# Security group for the EC2 instance
security_group_name = "web-security-group"
# Tags to apply to the instance
tags = {
  Name = "Terraform-EC2-Instance"
}
