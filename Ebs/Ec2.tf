resource "aws_instance" "hello-world" {
    ami = "ami-0e306788ff2473ccb"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["${aws_security_group.webserver-sg.id}"]
    key_name = "terraform"
tags = {
    Name = "hello-world"
 }

 #increasing Root Volume Size to 10 from default 8 GB

root_block_device {
    volume_type = "gp2"
    volume_size = "10"
  }
 
    
}



  


