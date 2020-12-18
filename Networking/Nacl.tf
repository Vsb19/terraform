resource "aws_network_acl" "My-Nacl" {
  vpc_id = "${aws_vpc.My-Vpc.id}"
  #subnet_ids = "{aws_subnet.pvt-sub-1.id}" # "${aws_subnet.pub-sub-2.id}"  "${aws_subnet.pvt-sub-1.id}"
  #subnet_id = "${aws_subnet.pub-sub-2.id}"
  #subnet_ids = "${aws_subnet.pvt-sub-1.id}"
  #subnet_ids = "${aws_subnet.pvt-sub-1.id}"


  egress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }

  tags = {
    Name = "My-NACL"
  }
  egress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  
  ingress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
}