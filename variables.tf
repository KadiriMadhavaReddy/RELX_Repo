variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu AMI ID (change as per your AWS region)"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Replace with the latest Ubuntu AMI ID
}


variable "security_group_name" {
  description = "Security group name for the web server"
  type        = string
  default     = "web-security-group"
}
