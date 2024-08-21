variable "ImagesList" {
    type = list
    default = ["ami-0ec0e125bb6c6e8ec", "ami-0ad21ae1d0696ad58"]
}

variable "instanceTypes" {
    type = list
    default = ["t2.micro", "t2.micro"]
}

variable "tagName" {
   type = list
   default = ["DEV", "SIT"]
}

variable "TotalInstances" {   
   type = number 
}

resource "aws_instance" "DB-Server2" {
  ami           = var.ImagesList[count.index]
  instance_type = var.instanceTypes[count.index]

  count = var.TotalInstances >= 2 ? 2 : var.TotalInstances

  tags = {
    Name = var.tagName[count.index]
  }
}