variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}
variable "vpc-name" {
    type = string
    default = "vpc-new"  
}
variable "public-subnet-name" {
    type = string
    default = "public-subnte"    
}
variable "private-subnet-name" {
    type = string
    default = "private-subnet"
}
variable "public-subnet-cidr" {
    type = string
    default = "10.0.0.0/24"
}
variable "private-subnet-cidr" {
    type = string
    default = "10.0.1.0/24"
}
variable "internet-gateway-name" {
    type = string
    default = "igw"  
}