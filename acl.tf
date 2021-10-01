resource "aws_network_acl" "acl1" {
  vpc_id = aws_vpc.my_tf_vpc.id
}

resource "aws_network_acl_rule" "acl1" {
  network_acl_id = aws_network_acl.acl1.id
  rule_number    = 200
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = aws_vpc.my_tf_vpc.cidr_block
  from_port      = 22
  to_port        = 22
}