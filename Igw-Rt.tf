resource "aws_route_table" "Rt-IGW" {  # Route Table for connecting Internet gatway
  vpc_id = "${aws_vpc.My-Vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"  #Allowing All Traffic
    gateway_id = "${aws_internet_gateway.igw.id}"    #Connecting Route Table to Internet Gateway
  }

  tags = {
    Name = "IGW-RT"
  }
}