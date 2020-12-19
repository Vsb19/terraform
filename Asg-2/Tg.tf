resource "aws_lb_target_group" "my-tg" {
  name     = "my-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-2f687147"
}

