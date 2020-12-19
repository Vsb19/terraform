resource "aws_launch_configuration" "mylc" {
  name          = "lc-1"
  image_id      = "ami-0e306788ff2473ccb"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.webserver-sg.id}"]
  key_name     = "terraform"
  user_data= <<-EOF
  #!/bin/bash
  sudo su -
  yum update -y
  yum install httpd - y
  service httpd start
  yum install java -y
  EOF
}
