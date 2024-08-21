variable "AmazonLinuxImage" {   
    type = string 
     default =  "ami-0ec0e125bb6c6e8ec" 
}

variable "UbuntuImage" {   
    type = string 
    default =  "ami-0ad21ae1d0696ad58"  
}

variable "TagName" {   
    type = string 
    default =  "FedExApp"
}

variable "DbTagName" {   
    type = string 
    default =  "DbServer"
}

variable "InstanceType" {   
    type = string 
    default =  "t2.micro"
}

resource "aws_instance" "amzn-web" {
  ami           =   var.AmazonLinuxImage              
  instance_type = var.InstanceType

  tags = {
    Name = var.TagName
  }
}

resource "aws_instance" "ubuntu-web" {
  ami           =   var.UbuntuImage              
  instance_type = var.InstanceType

  tags = {
    Name = var.DbTagName
  }
}