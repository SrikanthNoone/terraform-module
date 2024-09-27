resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr_block
    tags = {
      Name = var.vpc-name
    }
}
resource "aws_subnet" "public_subnet" {
    cidr_block = var.public-subnet-cidr
    vpc_id = var.aws_vpc.my_vpc.id
    tags = {
      Name = var.public-subnet-name
    }
}
resource "aws_subnet" "private_subnet" {
    cidr_block = var.private-subnet-cidr
    vpc_id = var.aws_vpc.my_vpc.id
    tags = {
      Name = var.private-subnet-name
    }
}
resource "aws_internet_gateway" "internet" {
    vpc_id = aws_vpc.my_vpc.id
    tags = {
      Name = var.internet-gateway-name
    }
}
resource "aws_route_table" "route_table" {
    vpc_id = aws_vpc.my_vpc.id
    tags = {
      Name = "route-table"
    }
    route {
        cidr_block = aws_subnet.public_subnet.cidr_block
    }
}
resource "aws_route_table_association" "public_route_table_association" {
    route_table_id = aws_route_table.route_table
    subnet_id = aws_subnet.public_subnet.id
}