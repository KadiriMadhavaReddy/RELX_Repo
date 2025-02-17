output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.instance1.public_ip
}