resource "aws_route_table" "Rt-Nat" {  # Route Table for connecting Internet gatway
  vpc_id = "${aws_vpc.My-Vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"  #Allowing All Traffic
    gateway_id = "${aws_nat_gateway.Nat-Gw.id}"    #Connecting Route Table to Nat Gateway
  }

  tags = {
    Name = "Nat-RT"
  }
}