resource "aws_route_table_association" "a" {
    subnet_id = aws.subnet.main.id
    route_table_id = aws_route_table.rt.id
  
}