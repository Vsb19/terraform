resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.My-Vpc.id}"
  

  tags = {
    Name = "My-IGW"
  }
}