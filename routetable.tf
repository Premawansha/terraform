resource "aws_route_table" "routetable1" {
  vpc_id = aws_vpc.my_tf_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.intgtway.id
  }
  tags = {
    Name = "routetable1"
  }
}
