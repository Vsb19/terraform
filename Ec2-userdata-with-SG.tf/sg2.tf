resource "aws_security_group" "my-sg" {
  
 # vpc_id      = aws_vpc.main.id

  ingress {
    description = "Secutity Group for Web Server"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Secutity Group for Web Server"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["122.169.134.180/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-sg"
  }
}