resource "aws_eip" "nat_eip" {
  domain = "vpc"
   tags = {
    Name = "NAT Gateway EIP"
  }
}



resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.private.id
}