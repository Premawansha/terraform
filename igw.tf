resource "aws_internet_gateway" "intgtway" {
  vpc_id = aws_vpc.my_tf_vpc.id


  tags = {
    Name = "intgtway"
  }
}
