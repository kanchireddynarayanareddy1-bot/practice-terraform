resource "aws_instance" "EC2Instance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.SG.id]

  tags = {
    Name = "terraform"
    terraform = "true"
  }
}
resource "aws_security_group" "SG" {
  name = "terraform-sg"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
    tags = {
        Name = "terraform-sg"
        terraform = "true"
    }
}
