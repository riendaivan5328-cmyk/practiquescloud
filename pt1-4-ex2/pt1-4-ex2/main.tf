provider "aws" {
  region = "us-east-1"
}

# La vpc
resource "aws_vpc" "main_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "practiquescloud-vpc-ex2"
  }
}

# las subnets
resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.32.0/25"
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnetirs1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.30.0/23"
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnetirs2"
  }
}

resource "aws_subnet" "subnet_3" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.33.0/28"
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnetirs3"
  }
}


# Subnet 1
resource "aws_instance" "maquina_1_1" {
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_1.id

  tags = {
    Name = "maquina1.1"
  }
}

resource "aws_instance" "maquina_1_2" {
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_1.id

  tags = {
    Name = "maquina1.2"
  }
}

# Subnet 2
resource "aws_instance" "maquina_2_1" {
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_2.id

  tags = {
    Name = "maquina2.1"
  }
}

resource "aws_instance" "maquina_2_2" {
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_2.id

  tags = {
    Name = "maquina2.2"
  }
}

# Subnet 3
resource "aws_instance" "maquina_3_1" {
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_3.id

  tags = {
    Name = "maquina3.1"
  }
}

resource "aws_instance" "maquina_3_2" {
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_3.id

  tags = {
    Name = "maquina3.2"
  }
}