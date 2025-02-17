resource "aws_instance" "web" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id     = data.aws_subnet.selected.id
  security_groups = [aws_security_group.web_sg.name]
  user_data = file("userdata.sh")

  depends_on = [aws_security_group.web_sg]

  tags = {
    Name = "Terraform-EC2"
  }
}