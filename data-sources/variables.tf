
variable "instance-type" {  
    type = string 
    default = "t3.micro" 
}
# variable "ami-id" {  
#     type = string 
#     default = "ami-0220d79f3f480ecf5" 
#}
variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
}
variable "Zone_Id" {
    default = "Z0983967EFX0Q8MCTIII" 
}
variable "domain_name" {
    default = "chinna.store"
}
