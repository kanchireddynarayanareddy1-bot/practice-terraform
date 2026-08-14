variable "project" {
    type = string
    default = "roboshop"
}
variable "environment" {
    type = string
    default = "dev"
}
# variable "common_name"{
#     default = "${var.project}-${var.environment}"
# }
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}
# variable "tags" {
#     type = map
#     default = {
#         Terraform = "true"
#         Project = "roboshop"
#         Environment = "dev"
#     }
# }
variable "instances" {
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}
