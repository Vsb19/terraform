resource "aws_instance" "hello-world" {
    ami = "ami-0e306788ff2473ccb"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["${aws_security_group.webserver-sg.id}"]
    key_name = "terraform"
 tags = {
    Name = "hello-world"
 }

user_data = <<-EOF
#!/bin/bash
 sudo su -
 sudo yum update -y
 sudo yum install httpd -y
 sudo service httpd start
 sudo yum install docker -y
 sudo service docker start
 EOF
}
