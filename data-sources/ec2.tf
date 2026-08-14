resource "aws_instance" "terraform" {
  count = length(var.instances)  
  ami = data.aws_ami.joindevops.id
  instance_type = var.instance-type
  vpc_security_group_ids = ["sg-027b2ecac92bbbfcf"] 
  tags = {
    Name = var.instances[count.index]
    Terraform = "true"
    Project = "Roboshop"
  }
}


resource "aws_route53_record" "roboshop-1" {
  count   = length(var.instances)  
  zone_id = var.Zone_Id
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true
}