provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "INSTANCIAIRS1" {
  ami           = "ami-04b938437b69a2c9c"
  instance_type = "t3.micro"

  tags = {
    Name = "INSTANCIAIRS1"
  }
}

resource "aws_instance" "INSTANCIAIRS2" {
  ami           = "ami-04b938437b69a2c9c"
  instance_type = "t3.micro"

  tags = {
    Name = "INSTANCIAIRS2"
  }
}