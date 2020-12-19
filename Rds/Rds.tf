resource "aws_db_instance" "my-db" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "admin1234"
  parameter_group_name = "default.mysql5.7"
  port = 3306
  auto_minor_version_upgrade = "true"
  vpc_security_group_ids = ["${aws_security_group.webserver-sg.id}"]
  multi_az = "true"
  #subnet_ids = "subnet-13255a5f"
  skip_final_snapshot = "true"
  apply_immediately = "true"
  

  tags ={
    name = "My-db"
  }
  

}


#Refference Link
#https://github.com/terraform-aws-modules/terraform-aws-rds/blob/master/examples/complete-mysql/main.tf
#https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest

