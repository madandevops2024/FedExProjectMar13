resource "aws_instance" "Instance" {
  ami           =   "ami-0ad21ae1d0696ad58"
  instance_type = t2.micro

  count = 3

  tags = {
    Name = "ProdServer"
  }
}
