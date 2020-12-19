#creating New EBS Volume
resource "aws_ebs_volume" "My-Ebs" {
  availability_zone = "ap-south-1a"
  size              = 10

  tags = {
    Name = "My-Ebs"
  }
}


#Attaching Ebs volume to Ec2 instance

resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/sdh"  #Name of the Ebs(inside the instance)
  volume_id   = "${aws_ebs_volume.My-Ebs.id}"  #Ebs id
  instance_id = "${aws_instance.hello-world.id}"  #Ec2-instance id
}