
variable "ImagesList" {
    type = list
    default = ["ami-0ec0e125bb6c6e8ec" , "ami-0ad21ae1d0696ad58", "ami-022ce6f32988af5fa" ]
}


variable "TagNames" {   
    type = list 
    default =  ["DEV", "SIT", "PROD"]
}

variable "InstanceType" {   
    type = string 
    default =  "t2.micro"
}

resource "aws_instance" "Instances" {
  ami           =   var.ImagesList[count.index]              
  instance_type = var.InstanceType

  count = 3

  tags = {
    Name = var.TagNames[count.index]
  }
}


