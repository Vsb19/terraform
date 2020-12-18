resource "aws_route_table_association" "Ass-Pub-Sub-1" {   #Assoiciating IGW Route Table to public - Subnet-1
  subnet_id      = "${aws_subnet.pub-sub-1.id}"
  route_table_id = "${aws_route_table.Rt-IGW.id}"
}


resource "aws_route_table_association" "Ass-Pub-Sub-2" {   #Assoiciating IGW Route Table to public - Subnet-2
  subnet_id      = "${aws_subnet.pub-sub-2.id}"
  route_table_id = "${aws_route_table.Rt-IGW.id}"
}


resource "aws_route_table_association" "Ass-pvt-Sub-1" {   #Assoiciating Nat Route Table to Pvt - Subnet-1
  subnet_id      = "${aws_subnet.pvt-sub-1.id}"
  route_table_id = "${aws_route_table.Rt-Nat.id}"
}