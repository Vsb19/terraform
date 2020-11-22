resource "aws_instance" "my-server" {
    ami = "ami-0e306788ff2473ccb"
    instance_type = "${var.instance-type}"
    vpc_security_group_ids = ["${aws_security_group.my-sg.id}"]
    key_name = "${var.key-name}"
 tags = {
    Name = "${var.my-tags}"
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



