resource "aws_instance" "web1" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id     = data.aws_subnet.selected.id
  depends_on = [aws_security_group.web_sg]
  security_groups = [aws_security_group.web_sg.name]
  user_data = file("userdata.sh")

  tags = {
    Name = "Terraform-EC2"
  }
}