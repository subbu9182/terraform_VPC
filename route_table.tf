resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
    gateway_id = aws.aws_internet_gateway.id

    }
    

    tags = {
      Name = "route_table"
    }
  
}