resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = ["sg-089a5932a228654db"]
    tags = var.ec2_tags
  }
