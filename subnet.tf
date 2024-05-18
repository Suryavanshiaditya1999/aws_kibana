# public subnet

resource "aws_subnet" "deploy_subnet_public" {
  vpc_id     = aws_vpc.deploy_vpc.id
  cidr_block = "172.0.0.0/22"

  tags = {
    Name = "public"
  }

  availability_zone = "ap-south-1a"

  map_public_ip_on_launch = true
}

resource "aws_subnet" "deploy_subnet_public2" {
  vpc_id     = aws_vpc.deploy_vpc.id
  cidr_block = "172.0.4.0/22"

  tags = {
    Name = "public2-subnet"
  }

  availability_zone = "ap-south-1b"

  map_public_ip_on_launch = true
}
# private subnet

resource "aws_subnet" "deploy_subnet_private1" {
  vpc_id     = aws_vpc.deploy_vpc.id
  cidr_block = "172.0.8.0/22"

  tags = {
    Name = "private1"
  }

  availability_zone = "ap-south-1a"
  # map_public_ip_on_launch = false
}

resource "aws_subnet" "deploy_subnet_private2" {
  vpc_id     = aws_vpc.deploy_vpc.id
  cidr_block = "172.0.12.0/22"

  tags = {
    Name = "private2"
  }

  availability_zone = "ap-south-1b"
  # map_public_ip_on_launch = false
}


