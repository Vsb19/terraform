resource "aws_subnet" "pub-sub-1" {  #Creating Public Subnet-1
  vpc_id     = "${aws_vpc.My-Vpc.id}"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = "true"
  cidr_block = "10.0.1.0/24"


  tags = {
    Name = "pub-sub-1"
  }
}

resource "aws_subnet" "pub-sub-2" {  #Creating Public Subnet-2
  vpc_id     = "${aws_vpc.My-Vpc.id}"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = "true"
  cidr_block = "10.0.2.0/24"


  tags = {
    Name = "pub-sub-2"
  }
}

resource "aws_subnet" "pvt-sub-1" {  #Creating Private Subnet-2
  vpc_id     = "${aws_vpc.My-Vpc.id}"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = "false"
  cidr_block = "10.0.3.0/24"


  tags = {
    Name = "pvt-sub-1"
  }
}