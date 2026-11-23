resource "aws_instance" "terraform" {
    ami = "ami-0055977a6e828a4f4"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.docker_sg.id]
    tags = {
        Name = "docker-instance"
        Terraform = "true"
    }
    user_data=file("docker-setup.sh")
    root_block_device {
    volume_size = 50
    volume_type = "gp3"
    delete_on_termination = true
  }
}

resource "aws_security_group" "docker_sg" {
  name   = "docker_sg"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "docker_sg"
  }

}