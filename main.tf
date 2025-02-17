data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
  vpc_id         = data.aws_vpc.default.id
  availability_zone = "us-east-1a"
}

resource "aws_security_group" "web_sg" {
  name_prefix = "web-sg-"
  description = "Allow HTTP and SSH traffic"
  vpc_id      = data.aws_vpc.default.id

  # Allow SSH (port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open to all (modify for security)
  }

  # Allow HTTP (port 80)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


