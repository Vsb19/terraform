resource "aws_nat_gateway" "Nat-Gw" {
  allocation_id = "${aws_eip.eip.id}"  #Attachinh created Elastic Ip 
  subnet_id     = "${aws_subnet.pub-sub-1.id}" #Subent id in which  Nat-Gw is placed
}