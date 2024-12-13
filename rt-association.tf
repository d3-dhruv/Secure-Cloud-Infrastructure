# Associate Private Subnet with Private Route Table
resource "aws_route_table_association" "myrt-association" {
  route_table_id = aws_route_table.myrt.id
  subnet_id = aws_subnet.private.id
}