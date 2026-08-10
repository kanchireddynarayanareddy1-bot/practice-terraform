
variable "instance-type" {  
    type = string 
    default = "t3.micro" 
}
variable "ami-id" {  
    type = string 
    default = "ami-0220d79f3f480ecf5" 
}
variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
}
variable "Zone_Id" {
    default = "Z07436271Q3L1R10WFWTQ"
}
variable "domain_name" {
    default = "chandrahasa.online"
}
