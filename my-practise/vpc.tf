resource "aws_vpc" "main" {
  cidr_block       = "${var.cidr-value}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name = "main"
  }
}

