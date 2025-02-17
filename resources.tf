resource "aws_instance" "web" {
  ami           = "ami-04b4f1a9cf54c11d0" 
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.selected.id
  security_groups = [aws_security_group.web_sg.name]
  user_data = file("userdata.sh")
  
  depends_on = [aws_security_group.web_sg]

  tags = {
    Name = "Terraform-EC2"
  }
}