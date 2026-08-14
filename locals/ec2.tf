resource "aws_instance" "terraform" {
    count = local.instance_count
    ami = local.ami_id
    instance_type = local.instance_type 
    vpc_security_group_ids = ["sg-027b2ecac92bbbfcf"]
    tags = {
        Name = "${var.project}-${var.environment}-${var.instances[count.index]}"
    }
}