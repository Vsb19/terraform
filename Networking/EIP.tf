resource "aws_eip" "eip" {  #Creating  Elastic Ip for attaching to Nat GateWay
  #instance = aws_instance.web.id
  vpc      = true
}