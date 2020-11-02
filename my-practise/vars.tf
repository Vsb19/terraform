
variable "cidr-value" {   #VPC CIDR VALUE
    default = "10.0.0.0/16"
  
}

variable "tenancy" {  #VPC Tenancy
    default = "default"
  
}


variable "vpc-name" { #Name of the vpc
     default = "vsb-vpc"
  
}
